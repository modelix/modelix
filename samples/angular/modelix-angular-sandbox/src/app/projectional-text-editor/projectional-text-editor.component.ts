import {Component, Input, OnInit} from '@angular/core';
import {ModelService, NodeId} from "../model.service";

@Component({
  selector: 'app-projectional-text-editor',
  templateUrl: './projectional-text-editor.component.html',
  styleUrls: ['./projectional-text-editor.component.scss']
})
export class ProjectionalTextEditorComponent implements OnInit {

  @Input() public nodeId: NodeId = 1

  constructor(public model: ModelService) { }

  ngOnInit(): void {
  }

  getName(): string | undefined {
    return this.model.getProperty(this.nodeId, "name");
  }

  setName() {
    this.model.setProperty(this.nodeId, "name", "name-" + Math.random());
  }
}
