import $ = require("jquery");
import {KeyCodeTranslator} from "./KeyCodeTranslator";


export class SvgBasedEditor {

    constructor(public readonly element: HTMLElement) {
        this.init(element);
    }

    private init(element: HTMLElement): void {


        element.tabIndex = -1;

        let lastEventTime: number = 0;

        let url = "ws://" + window.location.hostname + "/svgui/";
        url = "ws://localhost:8391/";
        const socket = new WebSocket(url);

        let rawDataFollowing: boolean = false;
        let lastMessage: IMessage = null;
        let rawData: string = null;

        $(window).on("scroll resize", () => {
            let winh = $(window).height();
            let rect = element.getBoundingClientRect();
            let y1 = -rect.top;
            let y2 = y1 + winh;
            // console.log("rect " + y1 + ", " + (y2));

            socket.send(JSON.stringify(<IViewRangeMessage> {
                type: "viewrange",
                top: y1,
                bottom: y2
            }));
        });

        socket.onmessage = (event) => {
            if (rawDataFollowing) {
                rawDataFollowing = false;
                rawData = event.data;

                if (lastMessage.type === "image.full") {
                    let svg = parseSvg(rawData);
                    element.innerHTML = null;
                    element.appendChild(svg);
                    // console.log((Date.now() - lastEventTime) + " full image");
                } else if (lastMessage.type === "image.fragment") {
                    let svg = parseSvg(rawData);
                    // let data: IImageData = lastMessage.data;
                    svg.style.left = 0 + "px";
                    svg.style.top = 0 + "px";
                    element.appendChild(svg);
                    // console.log((Date.now() - lastEventTime) + " delta image");
                }

                this.fixSize();
            } else {
                let message: IMessage = JSON.parse(event.data);
                lastMessage = message;

                if (message.type === "image.fragment") {
                    rawDataFollowing = true;
                } else if (message.type === "image.full") {
                    rawDataFollowing = true;
                }
            }

            // const a: HTMLElement;
        };

        let nodeRef = this.element.getAttribute("nodeRef");
        if (nodeRef) {
            socket.onopen = () => {
                socket.send(JSON.stringify({
                    type: "rootNode",
                    nodeRef: nodeRef
                }));
            };
        }

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

            socket.send(JSON.stringify(message));

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
            socket.send(JSON.stringify(<IMessage> {
                type: "keydown",
                data: <IKeyData> {
                    key: event.key,
                    keyCode: KeyCodeTranslator.translate(event.keyCode),
                    ctrl: event.ctrlKey,
                    alt: event.altKey,
                    shift: event.shiftKey,
                    meta: event.metaKey
                },
            }));
            event.preventDefault();
        };

        element.onkeyup = (event) => {
            console.log("up " + event);

            lastEventTime = Date.now();
            // console.log(Date.now() + " sending keyup");

            socket.send(JSON.stringify(<IMessage> {
                type: "keyup",
                data: <IKeyData> {
                    key: event.key,
                    keyCode: KeyCodeTranslator.translate(event.keyCode)
                },
            }));
            event.preventDefault();
        };
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