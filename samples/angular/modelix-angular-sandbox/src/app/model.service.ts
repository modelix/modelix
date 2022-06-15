import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";

export type NodeId = string

@Injectable({
  providedIn: 'root'
})
export class ModelService {
  private nodes: Map<NodeId, NodeData> = new Map()
  private versionHash: string | undefined
  private idGenerator: IdGenerator = new IdGenerator(0n, 0n)

  constructor(private http: HttpClient) {
    this.http.post<IdRangeData>("http://localhost:30761/model/json/generate-ids?quantity=10000", undefined).subscribe(data => {
      this.idGenerator = new IdGenerator(BigInt(data.first), BigInt(data.last))
    })
    this.readFromServer()
  }

  public readFromServer() {
    this.http.get<VersionData>("http://localhost:30761/model/json/angular-sandbox/").subscribe(data => {
      this.versionHash = data.versionHash
      this.loadNode(data.root)
    })
  }

  private loadNode(nodeData: NodeData): NodeId {
    this.nodes.set(nodeData.nodeId, nodeData)
    for (let childRole of Object.entries(nodeData.children)) {
      let children: Array<NodeId | NodeData> = childRole[1] as any
      for (let i = 0; i < children.length; i++){
        let child = children[i];
        if (typeof child === "object") {
          children[i] = this.loadNode(child)
        }
      }
    }
    return nodeData.nodeId
  }

  public addNewNode(parent: NodeId, role: string, index: number, concept: string) {
    let body = [<NodeUpdateData>{
      nodeId: this.idGenerator.generate(),
      parent: parent,
      role: role,
      index: index,
      concept: concept
    }]

    this.http.post<VersionData>(`http://localhost:30761/model/json/angular-sandbox/${this.versionHash}/update`, body).subscribe(data => {
      this.loadNode(data.root)
    })
  }

  public getChildren(parentId: NodeId, role: string): NodeId[] {
    let parentData = this.nodes.get(parentId)
    if (parentData === undefined) return []
    return parentData.children[role]
  }

  public containsNode(nodeId: NodeId): Boolean {
    return this.nodes.has(nodeId)
  }

  public getProperty(nodeId: NodeId, role: string): string | undefined {
    console.log("getProperty(" + nodeId + ", " + role + ")")
    let node = this.nodes.get(nodeId);
    if (node === undefined) return undefined;
    return node.properties[role];
  }

  public setProperty(nodeId: NodeId, role: string, value: string | null) {
    console.log(`setProperty(${nodeId}, ${role}, ${value})`)
    let node = this.nodes.get(nodeId);
    if (node === undefined) return

    let body = [<NodeUpdateData>{
      nodeId: nodeId,
      properties: {
        [role]: value
      }
    }]

    this.http.post<VersionData>(`http://localhost:30761/model/json/angular-sandbox/${this.versionHash}/update`, body).subscribe(data => {
      this.loadNode(data.root)
    })
  }
}

interface VersionData {
  repositoryId: string,
  versionHash: string,
  root: NodeData
}

interface NodeData {
  nodeId: NodeId,
  references: any,
  properties: any,
  children: any
}

interface NodeUpdateData {
  nodeId: NodeId,
  parent: NodeId | undefined,
  role: string | undefined,
  index: number | undefined,
  concept: string | undefined,
  references: any,
  properties: any,
  children: any
}

interface IdRangeData {
  first: NodeId,
  last: NodeId
}

class IdGenerator {

  constructor(private next: bigint, private last: bigint) {
  }

  public generate(): NodeId {
    let id = this.next++;
    if (id > this.last) throw Error("Out of IDs")
    return id.toString()
  }
}
