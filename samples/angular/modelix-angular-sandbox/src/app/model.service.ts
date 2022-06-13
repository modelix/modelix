import { Injectable } from '@angular/core';

export type NodeId = number

@Injectable({
  providedIn: 'root'
})
export class ModelService {
  private nodes: Map<NodeId, Node> = new Map()

  constructor() { }

  public getProperty(nodeId: NodeId, role: string): string | undefined {
    console.log("getProperty(" + nodeId + ", " + role + ")")
    let node = this.nodes.get(nodeId);
    if (node === undefined) return undefined;
    return node.properties.get(role);
  }

  public setProperty(nodeId: NodeId, role: string, value: string) {
    console.log(`setProperty(${nodeId}, ${role}, ${value})`)
    let node = this.nodes.get(nodeId);
    if (node === undefined) {
      node = new Node()
      this.nodes.set(nodeId, node)
    }
    node.properties.set(role, value)
  }
}

class Node {
  public properties: Map<string, string> = new Map()

}
