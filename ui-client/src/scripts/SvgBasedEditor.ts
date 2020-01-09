import $ = require("jquery");
import {KeyCodeTranslator} from "./KeyCodeTranslator";
import {DomUtils} from "./DomUtil";
import {getWebsocketUrl} from "./UrlUtil";
import {CCMenu, IAction} from "./CCMenu";


export class SvgBasedEditor {

    private socket: WebSocket;
    private ccmenu: CCMenu;

    constructor(public readonly element: HTMLElement) {
        this.init(element);
    }

    private connect(): void {
        if (this.socket && this.socket.readyState !== WebSocket.CLOSED) return;

        let rawDataFollowing: boolean = false;
        let lastMessage: IMessage = null;
        let rawData: string = null;

        this.socket = new WebSocket(getWebsocketUrl() + "svgui");

        this.socket.onmessage = (event) => {
            if (rawDataFollowing) {
                rawDataFollowing = false;
                rawData = event.data;

                if (lastMessage.type === "image.full") {
                    $(this.element).children("img").remove();

                    let img: HTMLImageElement = document.createElement("img");
                    img.src = "data:image/png;base64," + rawData;
                    img.classList.add("svgEditorImg");
                    img.classList.add("full");

                    this.element.appendChild(img);
                    // console.log((Date.now() - lastEventTime) + " full image");
                } else if (lastMessage.type === "image.fragment") {
                    let img: HTMLImageElement = document.createElement("img");
                    img.src = "data:image/png;base64," + rawData;
                    img.classList.add("svgEditorImg");
                    img.classList.add("incremental");
                    // let data: IImageData = lastMessage.data;
                    img.style.left = 0 + "px";
                    img.style.top = 0 + "px";
                    this.element.appendChild(img);
                    // console.log((Date.now() - lastEventTime) + " delta image");
                }

                // this.fixSize();
            } else {
                let message: IMessage = JSON.parse(event.data);
                lastMessage = message;

                if (message.type === "image.fragment") {
                    rawDataFollowing = true;
                } else if (message.type === "image.full") {
                    rawDataFollowing = true;
                } else if (message.type === "ccmenu.hide") {
                    this.ccmenu.setVisible(false);
                } else if (message.type === "ccmenu") {
                    let ccmenuMessage = message as ICCMenuMessage;

                    if (ccmenuMessage.actions) {
                        let actions: IAction[] = [];
                        let index = 0;
                        for (const a of ccmenuMessage.actions) {
                            const i = index;
                            actions.push({
                                getMatchingText: () => a.pattern,
                                getDescription: () => a.description,
                                execute: () => {
                                    this.send(<IExecuteCCActionMessage> {
                                        type: "executeCCAction",
                                        index: i
                                    });
                                }
                            });
                            index = 0;
                        }

                        this.ccmenu.show(this.element, ccmenuMessage.x, ccmenuMessage.y, ccmenuMessage.pattern, actions);
                    }
                    this.ccmenu.move(ccmenuMessage.x, ccmenuMessage.y);
                    this.ccmenu.listBox.setSelectedIndex(ccmenuMessage.selectionIndex);
                } else if (message.type === "intentions") {
                    let intentionsMessage = message as IIntentionsMessage;
                    for (let intention of intentionsMessage.intentions) {
                        console.log("Intention: " + intention.text);
                    }
                }
            }

            // const a: HTMLElement;
        };

        let nodeRef = this.element.getAttribute("nodeRef");
        if (nodeRef) {
            this.socket.onopen = () => {
                setTimeout(() => {
                    this.send({
                        type: "rootNode",
                        nodeRef: nodeRef
                    });
                }, 10);
            };
        }

        //this.simulateDisconnect();
    }

    simulateDisconnect(): void {
        setTimeout(() => {
            if (this.isConnected()) {
                this.socket.close();
            } else {
                this.simulateDisconnect();
            }
        }, 10000 + Math.random() * 1000);
    }

    isConnected(): boolean {
        return this.socket && this.socket.readyState === WebSocket.OPEN;
    }

    send(msg: object): void {
        if (this.isConnected()) {
            this.socket.send(JSON.stringify(msg));
        } else {
            this.connect();
        }
    }

    private init(element: HTMLElement): void {

        element.tabIndex = -1;
        let lastEventTime: number = 0;

        $(window).on("scroll resize", () => {
            if (!this.isConnected()) return;

            let winh = $(window).height();
            let rect = element.getBoundingClientRect();
            let y1 = -rect.top;
            let y2 = y1 + winh;
            // console.log("rect " + y1 + ", " + (y2));

            this.send(<IViewRangeMessage> {
                type: "viewrange",
                top: y1,
                bottom: y2
            });
        });

        function parseSvg(data: string): HTMLElement {
            const parser = new DOMParser();
            const svgDoc = parser.parseFromString(data, "image/svg+xml");
            return svgDoc.documentElement;
        }

        element.onclick = (event) => {
            lastEventTime = Date.now();

            const offset = $(element).offset();
            let x = event.pageX - offset.left;
            let y = event.pageY - offset.top;
            // // console.log("click " + x + ", " + y);

            let message: IMessage = {
                type: "click",
                data: {
                    x: x,
                    y: y,
                },
            };

            this.send(message);

            element.focus();
            event.preventDefault();
        };

        element.onkeypress = (event) => {
            console.log("press " + event);

            lastEventTime = Date.now();
            // console.log(Date.now() + " sending keypress");

            // socket.send(JSON.stringify(<IMessage> {
            //     type: "keypress",
            //     data: <IKeyData> {
            //         key: event.key,
            //         keyCode: KeyCodeTranslator.translate(event.keyCode)
            //     },
            // }));
            event.preventDefault();
        };

        element.onkeydown = (event) => {
            console.log("down " + event.repeat + ", " + event.which);

            if (KeyCodeTranslator.isModifierKey(event.keyCode)) return;

            lastEventTime = Date.now();
            console.log(Date.now() + " sending keydown");
            this.send(<IMessage> {
                type: "keydown",
                data: <IKeyData> {
                    key: event.key,
                    keyCode: KeyCodeTranslator.translate(event.keyCode),
                    ctrl: event.ctrlKey,
                    alt: event.altKey,
                    shift: event.shiftKey,
                    meta: event.metaKey
                },
            });
            event.preventDefault();
        };

        element.onkeyup = (event) => {
            console.log("up " + event);

            lastEventTime = Date.now();
            // console.log(Date.now() + " sending keyup");

            this.send({
                type: "keyup",
                data: <IKeyData> {
                    key: event.key,
                    keyCode: KeyCodeTranslator.translate(event.keyCode)
                },
            });
            event.preventDefault();
        };

        const watchdog = setInterval(() => {
            if (!DomUtils.isInDocument(this.element)) {
                clearInterval(watchdog);
                return;
            }
            if (!this.socket || this.socket.readyState === WebSocket.CLOSED) {
                this.connect();
            }
        }, 500);

        this.ccmenu = new CCMenu();
        this.element.appendChild(this.ccmenu.getDom());
    }

    private fixSize(): void {
        let maxW: number = 0;
        let maxH: number = 0;
        for (const child of this.element.children) {
            const bounds = child.getBoundingClientRect();
            maxW = Math.max(maxW, bounds.width);
            maxH = Math.max(maxH, bounds.height);
        }

        this.element.style.height = maxH + "px";
        this.element.style.width = maxW + "px";
    }
}


interface IMessage {
    type: string;
    data: any;
}

interface IMouseMessge {
    x: number;
    y: number;
}

interface IKeyData {
    key: string;
    keyCode: number;
    shift: boolean;
    alt: boolean;
    ctrl: boolean;
    meta: boolean;
}

interface IImageData {
    hasRoot: boolean;
    x: number;
    y: number;
    width: number;
    height: number;
}

interface ISelectionMessage extends IMessage {
    top: number;
    bottom: number;
}

interface IViewRangeMessage extends IMessage {
    top: number;
    bottom: number;
}

interface IRootNodeMessage extends IMessage {
    nodeRef: string;
}

interface ICCMenuMessage extends IMessage {
    x: number;
    y: number;
    selectionIndex: number;
    pattern: string;
    actions: Array<{pattern: string, description: string}>;
}

interface IExecuteCCActionMessage extends IMessage {
    index: number;
}

interface IIntentionsMessage extends IMessage {
    intentions: Array<{text: string}>;
}