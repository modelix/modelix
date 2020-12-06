import "../styles/sm.scss";
import $ = require("jquery");
import {DomUtils} from "./DomUtils";
import {getWebsocketBaseUrl} from "./UrlUtil";

export class LiveHtml {
    private static rootElementIdSequence = 0;
    protected readonly globalRootElementId: string;
    protected socket: WebSocket;
    protected watchdog: NodeJS.Timeout;
    protected id2dom = new Map<string, HTMLElement>();
    protected postprocessors = [];
    private messageHandlers = {
        dom: (message) => {
            this.postprocessors = [];
            const wiring: Array<{parent: Node, children: Node[]}> = [];

            for (const element of message.elements) {
                this.buildDom(element, wiring);
            }

            for (const w of wiring) {
                setDomChildren(w.parent, w.children.map(c => typeof c === "string" ? this.id2dom.get(c) : c));
            }

            if (this.id2dom.get(this.localRootElementId) !== this.rootElement) {
                console.warn(`Unexpected change of root element '${this.globalRootElementId}'`);
                this.id2dom.set(this.localRootElementId, this.rootElement);
            }
            if (!this.rootElement.classList.contains("connected")) this.rootElement.classList.add("connected");

            this.beforePostprocessors()
            for (const f of this.postprocessors) f();
            for (const f of this.postprocessors) f();
            this.afterUpdate();
        }
    };

    protected beforePostprocessors(): void {}
    protected afterUpdate(): void {}

    private styleHandlers = {
        boundingBox: (value, dom) => {
            this.postprocessors.push(() => {
                let minX;
                let maxX;
                let minY;
                let maxY;
                let first = true;
                for (const cellId of value.cellIds) {
                    const cell = document.getElementById(this.localToGlobalId(cellId));
                    if (cell) {
                        const bounds = DomUtils.absoluteBounds(cell);
                        minX = first ? bounds.left : Math.min(minX, bounds.left);
                        minY = first ? bounds.top : Math.min(minY, bounds.top);
                        maxX = first ? bounds.right : Math.max(maxX, bounds.right);
                        maxY = first ? bounds.bottom : Math.max(maxY, bounds.bottom);
                        first = false;
                    }
                }
                const parentRect = DomUtils.absoluteBounds(dom.parentElement);
                dom.style.left = (minX - parentRect.x) + "px";
                dom.style.top = (minY - parentRect.y) + "px";
                dom.style.width = (maxX - minX) + "px";
                dom.style.height = (maxY - minY) + "px";
            });
        },
    };

    constructor(public readonly rootElement: HTMLElement, protected readonly localRootElementId: string = "root") {
        if (rootElement.id) {
            this.globalRootElementId = rootElement.id;
            this.localRootElementId = rootElement.id;
        } else {
            this.globalRootElementId = "liveRootElement-" + ++LiveHtml.rootElementIdSequence;
            rootElement.id = this.globalRootElementId;
        }
        this.id2dom.set(localRootElementId, this.rootElement);

        this.watchdog = setInterval(() => {
            if (!DomUtils.isInDocument(this.rootElement)) {
                clearInterval(this.watchdog);
                return;
            }
            if (!this.socket || this.socket.readyState === WebSocket.CLOSED) {
                this.connect();
            }
            if (this.socket && this.socket.readyState === WebSocket.OPEN) {
                this.rootElement.classList.add("connected");
            } else {
                this.rootElement.classList.remove("connected");
            }
        }, 500);
    }

    public registerStyleHandler(key: string, handler: (value: any, dom: HTMLElement) => void): void {
        if (this.styleHandlers[key]) throw Error(`Style handler for '${key}' already exists`);
        this.styleHandlers[key] = handler;
    }

    public registerStyleHandlers(handlersMap: any): void {
        for (const [key, value] of Object.entries(handlersMap)) {
            this.registerStyleHandler(key, value as any);
        }
    }

    private connect(): void {
        if (this.socket && this.socket.readyState !== WebSocket.CLOSED) return;

        this.socket = new WebSocket(this.getWebsocketUrl());

        this.socket.onmessage = (event) => {
            const message = JSON.parse(event.data);
            const handler = this.messageHandlers[message.type];
            if (handler) {
                handler(message);
            }
        };
        this.socket.onopen = () => {
            this.onConnected(this.socket);
        };
    }

    protected getWebsocketUrl() {
        return getWebsocketBaseUrl() + "livehtml";
    }

    protected onConnected(socket: WebSocket): void {
        let nodeRef = this.rootElement.getAttribute("nodeRef");
        if (nodeRef) {
            this.socket.send(JSON.stringify({
                type: "rootNode",
                nodeRef: nodeRef
            }));
        }
    }

    private buildDom(json, wiring: Array<{parent: Node, children: Node[]}>): Node {
        if (json.type === "text") {
            return document.createTextNode(json.text);
        } else {
            let dom;

            // Try to reuse the existing element
            if (json.id) {
                const localId = json.id;
                const globalId = this.localToGlobalId(localId);
                const existing = this.id2dom.get(localId);
                if (existing) {
                    if (existing.tagName.toLowerCase() === json.type.toLowerCase()) {
                        dom = existing;
                    } else {
                        if (existing === this.rootElement) {
                            console.warn(`Cannot change tag of root element '${globalId}' from '${existing.tagName}' to '${json.type}'. Using existing one.`)
                            dom = existing
                        } else {
                            dom = document.createElement(json.type);
                            dom.id = globalId;
                            this.id2dom.set(localId, dom);
                            if (existing.parentElement) {
                                existing.parentElement.replaceChild(dom, existing);
                            }
                        }
                    }
                } else {
                    dom = document.createElement(json.type);
                    dom.id = globalId;
                    this.id2dom.set(localId, dom);
                }
            } else {
                dom = document.createElement(json.type);
            }

            for (const [jsonKey, jsonValue] of Object.entries(json)) {
                switch (jsonKey) {
                    case "class":
                        dom.className = jsonValue;
                        break;
                    case "style":
                        const stylesToRemove = new Set();
                        for (let i = 0; i < dom.style.length; i++) {
                            stylesToRemove.add(dom.style.item(i));
                        }
                        for (const key of Object.keys(jsonValue)) {
                            stylesToRemove.delete(key);
                            const styleHandler = this.styleHandlers[key];
                            if (styleHandler) {
                                styleHandler(jsonValue[key], dom);
                            } else {
                                dom.style.setProperty(key, jsonValue[key]);
                            }
                        }
                        for (const key of stylesToRemove) {
                            dom.style.removeProperty(key);
                        }
                        break;
                    default:
                        if (typeof jsonValue === "string") {
                            dom.setAttribute(jsonKey, jsonValue);
                        }
                        break;
                }
            }
            if (json.children) {
                wiring.push({
                    parent: dom,
                    children: json.children.map(c => typeof c === "string" ? c : this.buildDom(c, wiring))
                });
            }
            return dom;
        }
    }

    protected localToGlobalId(idFromServer: string): string {
        return idFromServer === this.localRootElementId
            ? this.globalRootElementId
            : this.globalRootElementId + "_" + idFromServer;
    }

    protected globalToLocalId(globalId: string): string {
        if (globalId === this.globalRootElementId) return this.globalRootElementId;
        if (globalId.startsWith(this.globalRootElementId)) {
            return globalId.substring(this.globalRootElementId.length + 1);
        }
        return globalId;
    }
}

function setDomChildren(parent, children) {
    // TODO replace only those children that have a different/no parent

    if (arrayEquals(parent.childNodes, children)) return;

    while (parent.firstChild) {
        parent.removeChild(parent.firstChild);
    }
    for (const child of children) {
        parent.appendChild(child);
    }
}

function arrayEquals(a1, a2) {
    if (a1.length !== a2.length) return false;
    for (let i = 0; i < a1.length; i++) {
        if (a1[i] !== a2[i]) return false;
    }
    return true;
}



