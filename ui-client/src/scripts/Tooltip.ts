/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

import {JSKeyCodes} from "./KeyCodeTranslator";
import $ = require("jquery");

export class Tooltip {
    private dom: HTMLElement;
    private contentContainer: HTMLElement | undefined;

    constructor() {
        this.initDom();
    }

    protected initDom(): void {
        this.dom = document.createElement("div");
        this.dom.classList.add("tooltip");
        $(this.dom).blur(() => {
            this.setVisible(false);
        });

        this.contentContainer = document.createElement("div");
        this.contentContainer.classList.add("tooltipContent");
        this.dom.appendChild(this.contentContainer);
    }

    getDom(): HTMLElement {
        return this.dom;
    }

    setVisible(visible: boolean): void {
        this.dom.style.visibility = visible ? "visible" : "hidden";
        if (visible) {
            this.dom.focus();
        } else {
            this.dom.parentElement.focus();
        }
    }

    setText(text: string): void {
        this.contentContainer.innerText = text;
    }

    isVisible(): boolean {
        return this.dom.style.visibility !== "hidden";
    }

    setPosition(x: number, y: number): void {
        this.dom.style.left = x + "px";
        this.dom.style.top = y + "px";
    }

    show(x: number, y: number, text: string): void {
        this.setPosition(x, y);
        this.setText(text);
        this.setVisible(true)
    }

    hide(): void {
        this.setVisible(false);
    }
}