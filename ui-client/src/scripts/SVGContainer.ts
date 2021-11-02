import {ImageBasedEditor} from "./ImageBasedEditor";
import {getWebsocketBaseUrl} from "./UrlUtil";
import {ReconnectingWebsocket} from "./ReconnectingWebsocket";

export class SVGContainer {

  private editorsSet = new Set<ImageBasedEditor>();

  private connectionStatus: HTMLElement;
  private socket: ReconnectingWebsocket = new ReconnectingWebsocket(this.element, getWebsocketBaseUrl() + "svgui");

  constructor(public readonly element: HTMLElement) {
    this.renderConnectionStatus();
    this.renderEditors();
    this.socket.addStatusListener(connected => this.updateConnectionStatus(connected))
  }

  private renderEditors(){
    let nodeRef = this.element.getAttribute("noderef");
    Array.from(this.element.children).forEach((elem: HTMLElement) => {
      if(elem.classList.contains("svgviewer")){
        this.editorsSet.add(new ImageBasedEditor(elem, this.socket, nodeRef));
      }
    })
  }

  private renderConnectionStatus(){
    this.connectionStatus = document.createElement("div");
    this.element.appendChild(this.connectionStatus);
    this.connectionStatus.classList.add("connectionStatus");
    this.updateConnectionStatus(false);
  }

  updateConnectionStatus(connected: boolean): void {
    if (connected) {
      this.connectionStatus.innerText = "Connected";
      this.connectionStatus.style.backgroundColor = "green";
      this.connectionStatus.style.color = "white";
      this.connectionStatus.style.opacity = "0";
    } else {
      this.connectionStatus.innerText = "Disconnected";
      this.connectionStatus.style.backgroundColor = "red";
      this.connectionStatus.style.color = "white";
      this.connectionStatus.style.opacity = "1";
    }
  }
}
