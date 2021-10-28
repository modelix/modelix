import $ = require("jquery");

export class NewNodeFromModel {
 dialog = document.createElement("dialog");
 moduleName = '';
 modelName = '';
 conceptDropDownID = '';
 constructor(element: HTMLElement, moduleName: string, modelName: string) {
  this.moduleName = moduleName;
  this.modelName = modelName;
  this.conceptDropDownID = "conceptDropdownFor_" + this.filterInvalidCharactersForID(this.modelName.split(""));
  $(element).click((event) => {event.preventDefault(); this.initialiseNewNodeCreation(moduleName, modelName); });
 }

 initialiseNewNodeCreation(moduleName: string, modelName: string){
  console.log(this.conceptDropDownID);

  console.log(this.filterInvalidCharactersForID(modelName.split("")));
  this.initPopUpWithMenu(moduleName, modelName);
 }
 initPopUpWithMenu(moduleName: string, modelName: string){
  let linebreak = document.createElement("br");
  let moduleDiv = this.createDivElement("module", moduleName);
  let modelDiv = this.createDivElement("model", modelName);
  let conceptDiv = this.createDropDownDiv();
  let dialogMenu = this.createDialogMenu();
  this.dialog.appendChild(moduleDiv);
  this.dialog.appendChild(modelDiv);
  this.dialog.appendChild(conceptDiv);
  this.dialog.appendChild(dialogMenu);
  this.dialog.open = true;
  document.body.append(this.dialog);
 }
 createDropDownDiv() {
  let divElement = document.createElement("div");
  let divLabel = this.createLabel("concept", "Select a concept: ");
  let elementMenu = document.createElement("select");
  elementMenu.id = this.conceptDropDownID;
  elementMenu.setAttribute("id", this.conceptDropDownID);
  this.refreshConceptsDropdown(elementMenu);
  divElement.appendChild(divLabel);
  divElement.appendChild(elementMenu);
  return divElement;
 }

 refreshConceptsDropdown(conceptsMenu: any) {
  let conceptList = null;
  $.ajax({
   type: "GET",
   url: "/concepts?module=" + this.moduleName + "&model=" + this.modelName,
   cache: false,
   async: false,
   success: response => {
    try {
     const output = JSON.parse(response);
     conceptList = output.concepts;
     conceptList.forEach((item, index) => {
      const conceptOption = document.createElement("option");
      conceptOption.innerHTML = item;
      conceptOption.value = item;
      conceptsMenu.appendChild(conceptOption);
     });
    } catch (error) {
     console.log(error);
    }
   }
  });
 }
 createDivElement(type: string, elementName: string) {
  let divElement = document.createElement("div");
  let divLabel = this.createLabel(type, "Selected " + type + ": ");
  let moduleElement = this.createTextElement(elementName);
  divElement.appendChild(divLabel);
  divElement.id = type + elementName;
  divElement.appendChild(moduleElement);
  return divElement;
 }
 createTextElement(elementValue: string) {
  let element = document.createElement("input");
  element.setAttribute("type", "text");
  element.disabled = true;
  element.value = elementValue;
  element.style.width = ((element.value.length + 1) * 7) + 'px';
  return element;
 }
 createLabel(forValue, innerHTMLContent){
  const labelElement = document.createElement("label");
  labelElement.setAttribute('for', forValue);
  labelElement.innerHTML = innerHTMLContent;
  return labelElement;
 }
 filterInvalidCharactersForID(inputString: any) {
  function checker(value) {
   let notAllowed = ['@', '~', '#', '.'];
   for (const item of notAllowed) {
    if (value.indexOf(item) > -1) {
     return false;
    }
   }
   return true;
  }
  inputString = inputString.filter(checker);
  return inputString.join('');
 }
 createDialogMenu() {
  let dialogMenu = document.createElement("menu");
  let submitButton = document.createElement("button");
  submitButton.innerHTML = "Add New Node";
  submitButton.onclick = event => {event.preventDefault(); this.submit(); this.closeDialog(); };
  const closeButton = document.createElement("button");
  closeButton.setAttribute("class", "btn btn-primary");
  closeButton.innerHTML = "Close";
  closeButton.onclick = event => {event.preventDefault(); this.closeDialog();};
  dialogMenu.appendChild(closeButton);
  dialogMenu.appendChild(submitButton);
  return dialogMenu;
 }

 closeDialog(){
  this.dialog.close('Closed');
 }

 submit(){
  console.log(document.getElementById(this.conceptDropDownID).nodeValue);
  $.ajax({
   type: "POST",
   url: "/insertNode?module=" + this.moduleName + "&model=" + this.modelName + "&concept=" + $("#" + this.conceptDropDownID).val(),
   cache: false,
   async: false,
   success: response => {
    try {
     const output = JSON.parse(response);
     window.location.href = "/" + output.nodeCreated;
    } catch (error) {
     console.log(error);
    }
   }
  });
 }
}