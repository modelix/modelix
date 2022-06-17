import { Component, OnInit } from '@angular/core';
import {ModelService, NodeId} from "../../model.service";

@Component({
  selector: 'app-customers',
  templateUrl: './customers.component.html',
  styleUrls: ['./customers.component.scss']
})
export class CustomersComponent implements OnInit {

  constructor(private model: ModelService) { }

  ngOnInit(): void {
  }

  getCustomerIds(): NodeId[] {
    return this.model.getChildren("1", "customers")
  }
}
