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
  public name = new FormControl('');

  constructor(private model: ModelService) { }

  ngOnInit(): void {
    this.name.setValue(this.readName())
    this.name.registerOnChange(() => {
      this.writeName(this.name.getRawValue())
    })
  }

  public exists(): Boolean {
    return this.nodeId !== undefined && this.model.containsNode(this.nodeId)
  }

  public create() {
    this.model.addNewNode("1", "customers", -1, "Customer")
  }

  public readName(): string {
    if (this.nodeId === undefined) return ""
    let value = this.model.getProperty(this.nodeId, "name")
    return value === undefined ? "" : value
  }

  public writeName(value: string | null) {
    if (this.nodeId === undefined) return
    this.model.setProperty(this.nodeId, "name", value)
  }
}
