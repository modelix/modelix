import $ = require("jquery");

export class NewNodeFromModel {
 constructor(element: HTMLElement, moduleName: string, modelName: string) {
  $(element).click((event) => {event.preventDefault(); this.alertTransformation(moduleName, modelName); });
 }
 getModuleName(){

 }
 getModelName(){

 }
 alertTransformation(moduleName: string, modelName: string){
  alert('This is from transformation and client side' + moduleName + "And" + modelName);
 }
 callOnClick(){

 }
}