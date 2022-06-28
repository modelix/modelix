import {Component, Input, OnInit} from '@angular/core';
import {ModelService, NodeId} from "../../model.service";
import {FormControl} from "@angular/forms";

@Component({
  selector: 'app-customer',
  templateUrl: './customer.component.html',
  styleUrls: ['./customer.component.scss']
})
export class CustomerComponent implements OnInit {

  @Input() public nodeId: NodeId | undefined

  constructor(private model: ModelService) { }

  ngOnInit(): void {

  }

  public exists(): Boolean {
    return this.nodeId !== undefined && this.model.containsNode(this.nodeId)
  }

  public create() {
    this.model.addNewNode("1", "customers", -1, "Customer")
  }

  public readProperty(role: string): string {
    if (this.nodeId === undefined) return ""
    let value = this.model.getProperty(this.nodeId, role)
    return value === undefined ? "" : value
  }

  public readDateProperty(role: string): Date | undefined {
    if (this.nodeId === undefined) return undefined
    let value = this.model.getProperty(this.nodeId, role)
    return value === undefined ? undefined : new Date(value)
  }

  public writeProperty(role: string, value: string | null | undefined) {
    if (this.nodeId === undefined) return
    this.model.setProperty(this.nodeId, role, value)
  }

  public writeDateProperty(role: string, value: Date | null | undefined) {
    if (this.nodeId === undefined) return
    this.writeProperty(role, value?.toDateString())
  }
}
