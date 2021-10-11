import {ImageBasedEditor} from "./ImageBasedEditor";
import {getWebsocketBaseUrl} from "./UrlUtil";

export class SVGContainer {

  private socket: WebSocket;

  private editorsSet = new Set<ImageBasedEditor>();

  private connectionStatus: HTMLElement;
  private lastConnectionStatus: number;

  constructor(public readonly element: HTMLElement){
    this.init()
  }

  private init(){
    this.renderConnectionStatus()
    this.connect();
    this.listen();
    this.renderEditors()
  }

  private renderEditors(){
    let nodeRef = this.element.getAttribute("noderef");
    Array.from(this.element.children).forEach((elem: HTMLElement ) => {
      if(elem.classList.contains("svgviewer")){
        this.editorsSet.add(new ImageBasedEditor(elem, this.socket, nodeRef));
      }
    })
  }

  private renderConnectionStatus(){
    this.connectionStatus = document.createElement("div");
    this.element.appendChild(this.connectionStatus);
    this.connectionStatus.classList.add("connectionStatus");
    this.updateConnectionStatus();
  }

  private connect(){
    this.socket = new WebSocket(getWebsocketBaseUrl() + "svgui");
    this.updateConnectionStatus();
  }

  private listen(){
    this.socket.onopen = () => {
      this.updateConnectionStatus();
    }
    this.socket.onclose = () => {
      this.updateConnectionStatus();
      setTimeout(() => {
        this.connect();
        this.listen();
      }, 1000);
    }
    this.socket.onerror = () => this.updateConnectionStatus();
    this.socket.onmessage = () => this.updateConnectionStatus();
  }

  updateConnectionStatus(): void {
    let status = this.socket ? this.socket.readyState : WebSocket.CLOSED;

    if (status === this.lastConnectionStatus) return;
    this.lastConnectionStatus = status;

    switch (status) {
      case WebSocket.OPEN:
      this.connectionStatus.innerText = "Connected";
      this.connectionStatus.style.backgroundColor = "green";
      this.connectionStatus.style.color = "white";
      this.connectionStatus.style.opacity = "0";
      break;
      case WebSocket.CONNECTING:
      this.connectionStatus.innerText = "Connecting...";
      this.connectionStatus.style.backgroundColor = "red";
      this.connectionStatus.style.color = "white";
      this.connectionStatus.style.opacity = "1";
      break;
      case WebSocket.CLOSING:
      this.connectionStatus.innerText = "Disconnecting...";
      this.connectionStatus.style.backgroundColor = "red";
      this.connectionStatus.style.color = "white";
      this.connectionStatus.style.opacity = "1";
      break;
      case WebSocket.CLOSED:
      default:
      this.connectionStatus.innerText = "Disconnected";
      this.connectionStatus.style.backgroundColor = "red";
      this.connectionStatus.style.color = "white";
      this.connectionStatus.style.opacity = "1";
      break;
    }
  }
}
