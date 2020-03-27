import "../styles/sm.scss";
import $ = require("jquery");
import {DomUtils} from "./DomUtil";
import {getWebsocketUrl} from "./UrlUtil";

export class ShadowModelsBasedEditor {

    private socket: WebSocket;
    private id2dom = new Map<string, HTMLElement>();
    private postprocessors = [];
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

            const newViewer = this.id2dom.get("viewer");
            if (newViewer) {
                if (this.viewer !== newViewer) {
                    newViewer.setAttribute("nodeRef", this.viewer.getAttribute("nodeRef"));
                    this.viewer.parentElement.replaceChild(newViewer, this.viewer);
                    this.viewer = newViewer;
                }
                if (!newViewer.classList.contains("smviewer")) newViewer.classList.add("smviewer");
                if (!newViewer.classList.contains("connected")) newViewer.classList.add("connected");
            }

            for (const f of this.postprocessors) f();
        }
    };
    private styleHandlers = {
        caretAlignment: (value, caretDom) => {
            this.postprocessors.push(() => {
                const textCell = document.getElementById(value.cellId);
                const pos = Number.parseInt(value.position, 10);
                if (textCell) {
                    const textCellRect = absoluteBounds(textCell);
                    const parentRect = absoluteBounds(caretDom.parentElement);
                    let x = caretToX(textCell, pos);
                    const rightend: boolean = caretDom.classList.contains("rightend");
                    const leftend: boolean = caretDom.classList.contains("leftend");
                    const offsetx = rightend ? -3 : 0;
                    const offsety = leftend || rightend ? -1 : 0;
                    caretDom.style.left = (x - parentRect.x + offsetx) + "px";
                    caretDom.style.top = (textCellRect.y - parentRect.y + offsety) + "px";
                    caretDom.style.height = textCellRect.height + "px";
                }
            });
        },
        ccAlignment: (value, ccDom) => {
            this.postprocessors.push(() => {
                const textCell = document.getElementById(value.cellId);
                if (textCell) {
                    const textCellRect = absoluteBounds(textCell);
                    const parentRect = absoluteBounds(ccDom.parentElement);
                    ccDom.style.left = (textCellRect.x - parentRect.x) + "px";
                    ccDom.style.top = (textCellRect.y + textCellRect.height - parentRect.y) + "px";
                }
            });
        },
    };

    constructor(private viewer: HTMLElement) {
        this.init();
    }

    public getViewerElement(): HTMLElement {
        return this.viewer;
    }

    private connect(): void {
        if (this.socket && this.socket.readyState !== WebSocket.CLOSED) return;

        this.socket = new WebSocket(getWebsocketUrl() + "smui");

        this.socket.onmessage = (event) => {
            const message = JSON.parse(event.data);
            const handler = this.messageHandlers[message.type];
            if (handler) {
                handler(message);
            }
        };

        let nodeRef = this.viewer.getAttribute("nodeRef");
        if (nodeRef) {
            this.socket.onopen = () => {
                this.socket.send(JSON.stringify({
                    type: "rootNode",
                    nodeRef: nodeRef
                }));
            };
        }
    }

    private init(): void {
        this.id2dom.set("viewer", this.viewer);
        if (this.viewer.id) this.id2dom.set(this.viewer.id, this.viewer);

        this.viewer.tabIndex = -1;
        $(this.viewer).click(event => {
            this.viewer.focus();
            event.preventDefault();
        });
        $(this.viewer).focus(() => {
            this.viewer.classList.add("focus");
        });
        $(this.viewer).blur(() => {
            this.viewer.classList.remove("focus");
        });
        this.viewer.onkeypress = (event) => {
            const text = event.key;
            if (text.length === 1) {
                this.socket.send(JSON.stringify({
                    type: "keypress",
                    key: text
                }));
            }
        };
        this.viewer.onkeydown = (event) => {
            if (event.code === "Space" && event.ctrlKey) {
                event.preventDefault();
                this.socket.send(JSON.stringify({
                    type: "complete"
                }));
            } else if (event.code === "ArrowDown") {
                event.preventDefault();
                this.socket.send(JSON.stringify({
                    type: "down"
                }));
            } else if (event.code === "Enter") {
                event.preventDefault();
                this.socket.send(JSON.stringify({
                    type: "enter"
                }));
            } else if (event.code === "ArrowUp") {
                event.preventDefault();
                this.socket.send(JSON.stringify({
                    type: "up"
                }));
            } else if (event.code === "ArrowLeft") {
                event.preventDefault();
                this.socket.send(JSON.stringify({
                    type: "left"
                }));
            } else if (event.code === "ArrowRight") {
                event.preventDefault();
                this.socket.send(JSON.stringify({
                    type: "right"
                }));
            } else if (event.code === "Backspace") {
                event.preventDefault();
                this.socket.send(JSON.stringify({
                    type: "backspace"
                }));
            } else if (event.code === "Tab") {
                event.preventDefault();
                this.socket.send(JSON.stringify({
                    type: "tab"
                }));
            } else if (event.ctrlKey || event.metaKey || event.altKey) {
                event.preventDefault();
                this.socket.send(JSON.stringify({
                    type: "keydown",
                    key: event.code,
                    ctrlDown: event.ctrlKey,
                    shiftDown: event.shiftKey,
                    altDown: event.altKey,
                    metaDown: event.metaKey
                }));
            }
        };

        const watchdog = setInterval(() => {
            if (!DomUtils.isInDocument(this.viewer)) {
                clearInterval(watchdog);
                return;
            }
            if (!this.socket || this.socket.readyState === WebSocket.CLOSED) {
                this.connect();
            }
        }, 500);
    }

    private buildDom(json, wiring: Array<{parent: Node, children: Node[]}>): Node {
        if (json.type === "text") {
            return document.createTextNode(json.text);
        } else {
            let dom;

            // Try to reuse the existing element
            if (json.id) {
                const existing = this.id2dom.get(json.id);
                if (existing) {
                    if (existing.tagName.toLowerCase() === json.type.toLowerCase()) {
                        dom = existing;
                    } else {
                        dom = document.createElement(json.type);
                        dom.id = json.id;
                        this.id2dom.set(json.id, dom);
                        if (existing.parentElement) {
                            existing.parentElement.replaceChild(dom, existing);
                        }
                    }
                } else {
                    dom = document.createElement(json.type);
                    dom.id = json.id;
                    this.id2dom.set(json.id, dom);
                }
            } else {
                dom = document.createElement(json.type);
            }

            if (json.class) dom.className = json.class;
            if (json.href) dom.href = json.href;
            if (json.style) {
                const stylesToRemove = new Set();
                for (let i = 0; i < dom.style.length; i++) {
                    stylesToRemove.add(dom.style.item(i));
                }
                for (const key of Object.keys(json.style)) {
                    stylesToRemove.delete(key);
                    const styleHandler = this.styleHandlers[key];
                    if (styleHandler) {
                        styleHandler(json.style[key], dom);
                    } else {
                        dom.style.setProperty(key, json.style[key]);
                    }
                }
                for (const key of stylesToRemove) {
                    dom.style.removeProperty(key);
                }
            }
            if (dom.classList.contains("textCell")) {
                dom.onclick = (event) => {
                    this.socket.send(JSON.stringify({
                        type: "click",
                        elementId: dom.id,
                        x: event.x - dom.getBoundingClientRect().x,
                        y: event.y - dom.getBoundingClientRect().y,
                        pos: xToCaret(dom, event.x - document.body.getBoundingClientRect().left)
                    }));
                    this.viewer.focus();
                };
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

function xToCaret(textCell, x) {
    const bounds = absoluteBounds(textCell);
    let left = bounds.x;
    let width = bounds.width;
    let right = left + width;

    let numChars = textCell.innerText.length;
    if (x <= left) return 0;
    if (x >= right) return numChars;

    let c = Math.round(numChars * (x - left) / width);
    let c1 = 0;
    let c2 = numChars;
    while (c2 - c1 > 1) {
        if (caretToX(textCell, c) < x) {
            c1 = c;
        } else {
            c2 = c;
        }
        c = Math.round((c2 + c1) / 2);
    }
    return distanceToCaret(textCell, c1, x) < distanceToCaret(textCell, c2, x) ? c1 : c2;
}

function caretToX(textCell, caretPos) {
    let textNode = textCell.firstChild;
    if (!textNode) {
        return absoluteBounds(textCell).x;
    }
    let maxPos = textNode.textContent ? textNode.textContent.length - 1 : 0;
    caretPos = Math.min(maxPos + 1, caretPos);
    if (caretPos < 0 || caretPos > maxPos) {
        return absoluteBounds(textCell).right;
    } else {
        let range = document.createRange();
        range.setStart(textNode, caretPos);
        range.setEndAfter(textNode);
        return absoluteBounds(range).x;
    }
}

function distanceToCaret(textCell, caretPos, x) {
    return Math.abs(caretToX(textCell, caretPos) - x);
}

function absoluteBounds(element) {
    const bodyRect = document.body.getBoundingClientRect();
    const elemRect = element.getBoundingClientRect();
    let x = elemRect.left - bodyRect.left;
    let y = elemRect.top - bodyRect.top;
    return {
        x: x,
        y: y,
        left: x,
        top: y,
        right: x + elemRect.width,
        bottom: y + elemRect.height,
        width: elemRect.width,
        height: elemRect.height
    };
}

