import "../styles/sm.scss";
import $ = require("jquery");
import {DomUtils} from "./DomUtils";
import {LiveHtml} from "./LiveHtml";
import {getWebsocketBaseUrl} from "./UrlUtil";

export class ShadowModelsBasedEditor extends LiveHtml {

    constructor(rootElement: HTMLElement) {
        super(rootElement, "viewer");
        this.registerStyleHandlers({
            caretAlignment: (value, caretDom) => {
                this.postprocessors.push(() => {
                    const textCell = document.getElementById(this.localToGlobalId(value.cellId));
                    const pos = Number.parseInt(value.position, 10);
                    if (textCell) {
                        const textCellRect = DomUtils.absoluteBounds(textCell);
                        const parentRect = DomUtils.absoluteBounds(caretDom.parentElement);
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
            textRange: (value, dom) => {
                this.postprocessors.push(() => {
                    const textCell = document.getElementById(this.localToGlobalId(value.cellId));
                    const start = Number.parseInt(value.start, 10);
                    const length = Number.parseInt(value.length, 10);
                    const end = start + length;
                    if (textCell) {
                        const textCellRect = DomUtils.absoluteBounds(textCell);
                        const parentRect = DomUtils.absoluteBounds(dom.parentElement);
                        let x1 = caretToX(textCell, start);
                        let x2 = caretToX(textCell, end);
                        dom.style.left = (x1 - parentRect.x - 1) + "px";
                        dom.style.top = (textCellRect.y - parentRect.y - 1) + "px";
                        dom.style.height = textCellRect.height + "px";
                        dom.style.width = (x2 - x1) + "px";
                    }
                });
            },
            ccAlignment: (value, ccDom) => {
                this.postprocessors.push(() => {
                    const textCell = document.getElementById(this.localToGlobalId(value.cellId));
                    if (textCell) {
                        const textCellRect = DomUtils.absoluteBounds(textCell);
                        const parentRect = DomUtils.absoluteBounds(ccDom.parentElement);
                        ccDom.style.left = (textCellRect.x - parentRect.x) + "px";
                        ccDom.style.top = (textCellRect.y + textCellRect.height - parentRect.y) + "px";
                    }
                });
            },
            sideTransformAlignment: (value, dom) => {
                this.postprocessors.push(() => {
                    const hostCell = document.getElementById(this.localToGlobalId(value.cellId));
                    if (hostCell) {
                        const side: string = value.side;
                        const hostCellRect = DomUtils.absoluteBounds(hostCell);
                        const parentRect = DomUtils.absoluteBounds(dom.parentElement);
                        if (side === "left") {
                            dom.style.right = (hostCellRect.x - parentRect.x) + "px";
                        } else if (side === "right") {
                            dom.style.left = (hostCellRect.right - parentRect.x) + "px";
                        } else if (side === "center") {
                            dom.style.left = (hostCellRect.x - parentRect.x) + "px";
                        }
                        dom.style.top = (hostCellRect.y - parentRect.y - 1) + "px";
                    }
                });
            },
        });

        this.rootElement.tabIndex = -1;
    }

    protected registerRootElementHandlers() {
        $(this.rootElement).click(event => {
            this.rootElement.focus();
            event.preventDefault();
        });
        this.rootElement.onkeypress = (event) => {
            event.preventDefault();
            event.stopPropagation();
            this.socket.sendMessage({
                type: "keypress",
                code: event.code,
                key: event.key,
                location: event.location,
                repeat: event.repeat,
                ctrlDown: event.ctrlKey,
                shiftDown: event.shiftKey,
                altDown: event.altKey,
                metaDown: event.metaKey
            });
        };
        this.rootElement.onkeydown = (event) => {
            event.stopPropagation();
            if (event.code === "Tab" || event.code === "ArrowDown" || event.code === "ArrowUp") {
                // no keypress event is fired if .preventDefault() is called here
                // that's why it's called only for selected keys
                event.preventDefault();
            }
            this.socket.sendMessage({
                type: "keydown",
                code: event.code,
                key: event.key,
                location: event.location,
                repeat: event.repeat,
                ctrlDown: event.ctrlKey,
                shiftDown: event.shiftKey,
                altDown: event.altKey,
                metaDown: event.metaKey
            });
        };

        $(this.rootElement).click(e => {
            for (const dom of document.elementsFromPoint(e.clientX, e.clientY)) {
                let caretPos: number;
                if (dom.classList.contains("textCell")) {
                    caretPos = xToCaret(dom, e.clientX - document.body.getBoundingClientRect().left);
                }
                let message = {
                    type: "click",
                    elementId: this.globalToLocalId(dom.id),
                    x: e.clientX - dom.getBoundingClientRect().left,
                    y: e.clientY - dom.getBoundingClientRect().top,
                    pos: caretPos
                };
                this.socket.sendMessage(message);
            }
            this.rootElement.focus();
        });
    }

    protected beforePostprocessors() {
        if (!this.rootElement.classList.contains("smviewer")) this.rootElement.classList.add("smviewer");
    }

    protected afterUpdate(): void {

        for (const e of document.getElementsByClassName("ccSelectedEntry")) {
            e.scrollIntoView({block: "nearest"});
        }
    }

    protected getWebsocketUrl() {
        return getWebsocketBaseUrl() + "smui";
    }
}

function xToCaret(textCell, x): number {
    const bounds = DomUtils.absoluteBounds(textCell);
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

function caretToX(textCell, caretPos): number {
    let textNode = textCell.firstChild;
    if (!textNode) {
        return DomUtils.absoluteBounds(textCell).x;
    }
    let maxPos = textNode.textContent ? textNode.textContent.length - 1 : 0;
    caretPos = Math.min(maxPos + 1, caretPos);
    if (caretPos < 0 || caretPos > maxPos) {
        return DomUtils.absoluteBounds(textCell).right;
    } else {
        let range = document.createRange();
        range.setStart(textNode, caretPos);
        range.setEndAfter(textNode);
        return DomUtils.absoluteBounds(range).x;
    }
}

function distanceToCaret(textCell, caretPos, x): number {
    return Math.abs(caretToX(textCell, caretPos) - x);
}
