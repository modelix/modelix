/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


import {DomUtils} from "./DomUtils";

export class ReconnectingWebsocket {

    protected socket: WebSocket;
    protected watchdog: NodeJS.Timeout;
    protected lastStatus = false;
    private messageListeners: Array<(message: string)=>void> = [];
    private statusListeners: Array<(connected: boolean)=>void> = [];

    constructor(readonly owner: HTMLElement, readonly url: string) {
        this.watchdog = setInterval(() => {
            if (!DomUtils.isInDocument(this.owner)) {
                clearInterval(this.watchdog);
                return;
            }
            if (!this.socket || this.socket.readyState === WebSocket.CLOSED) {
                this.connect();
            }
            this.notifyStatus();
        }, 500);
        this.connect();
    }

    addStatusListener(l: (connected: boolean)=>void): void {
        this.statusListeners.push(l);
        l(this.lastStatus);
    }

    addMessageListener(l: (message: string)=>void): void {
        this.messageListeners.push(l);
    }

    dispose(): void {
        clearInterval(this.watchdog)
        this.watchdog = null;
        if (this.socket.readyState === WebSocket.OPEN) {
            this.socket.close();
        }
        this.socket = null;
    }

    private notifyStatus(): void {
        let connected = this.socket && this.socket.readyState === WebSocket.OPEN;
        if (connected !== this.lastStatus) {
            this.lastStatus = connected;
            for (let l of this.statusListeners) {
                l(connected)
            }
        }
    }

    sendMessage(message: string | object): void {
        if (typeof(message) === "string") {
            this.socket.send(message);
        } else {
            this.socket.send(JSON.stringify(message));
        }
    }

    private connect(): void {
        if (this.socket && this.socket.readyState !== WebSocket.CLOSED) return;

        this.socket = new WebSocket(this.url);

        this.socket.onmessage = (event) => {
            for (let l of this.messageListeners) {
                l(event.data);
            }
        };
        this.socket.onopen = () => {
            this.notifyStatus();
        };
        this.socket.onclose = () => {
            this.notifyStatus();
        }
    }
}