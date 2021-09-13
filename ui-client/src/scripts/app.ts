import "../styles/base.scss";
import $ = require("jquery");
import {ImageBasedEditor} from "./ImageBasedEditor";
import {ShadowModelsBasedEditor} from "./ShadowModelsBasedEditor";
import {LiveHtml} from "./LiveHtml";

$(() => {

    const svgViewers = new Set<ImageBasedEditor>();
    for (const element of document.getElementsByClassName("svgviewer")) {
        svgViewers.add(new ImageBasedEditor(element as HTMLElement));
    }

    const smViewers = new Set<ShadowModelsBasedEditor>();
    for (const element of document.getElementsByClassName("smviewer")) {
        smViewers.add(new ShadowModelsBasedEditor(element as HTMLElement));
    }

    const liveHtmlElements = new Set<LiveHtml>();
    for (const element of document.getElementsByClassName("livehtml")) {
        liveHtmlElements.add(new LiveHtml(element as HTMLElement));
    }
    var createBtn = document.createElement("button");
    var dialog = document.createElement("dialog");
    var linebreak = document.createElement("br");
    var moduleDiv = document.createElement("div");
    var modulesLabel = createLabel("module", "Select a module:");
    var modulesMenu = createDropdown("module", function (){
        refreshModelsDropdown();
    });
    moduleDiv.appendChild(modulesLabel);
    moduleDiv.appendChild(linebreak);
    moduleDiv.appendChild(modulesMenu);
    dialog.appendChild(moduleDiv);
    refreshModulesDropdown();
    var modelDiv = document.createElement("div");
    var modelsLabel = createLabel("model", "Select a model:");
    var modelsMenu = createDropdown("model", function (){
        refreshConceptsDropdown();
    });
    modelDiv.appendChild(modelsLabel);
    modelDiv.appendChild(linebreak);
    modelDiv.appendChild(modelsMenu);
    dialog.appendChild(modelDiv);
    refreshModelsDropdown();
    var conceptDiv = document.createElement("div");
    var conceptsLabel = createLabel("concept", "Select a concept:");
    var conceptsMenu = createDropdown("concept", null);
    conceptDiv.appendChild(conceptsLabel);
    conceptDiv.appendChild(linebreak);
    conceptDiv.appendChild(conceptsMenu);
    dialog.appendChild(conceptDiv);
    refreshConceptsDropdown();
    createAddButton();
    createDialog();
    function createDialog() {
        dialog.setAttribute("id", "createDialog");
        var dialogMenu = document.createElement("menu");
        var submitButton = document.createElement("button");
        submitButton.innerHTML = "Submit";
        submitButton.onclick = function(event){event.preventDefault();submit();closeDialog();};
        var closeButton = document.createElement("button");
        closeButton.setAttribute("class", "btn btn-primary");
        closeButton.innerHTML = "Close";
        closeButton.onclick=function(event){event.preventDefault();closeDialog();};
        dialogMenu.appendChild(closeButton);
        dialogMenu.appendChild(submitButton);
        dialog.appendChild(dialogMenu);
        document.body.append(dialog);
    }

    function createLabel(forValue, innerHTMLContent){
        var labelElement = document.createElement("label");
        labelElement.setAttribute('for', forValue);
        labelElement.innerHTML = innerHTMLContent;
        return labelElement;
    }

    function createDropdown(element, onChangeFunction){
        var elementMenu = document.createElement("select");
        elementMenu.setAttribute("id", element+ "DropDown");
        elementMenu.onchange = onChangeFunction;
        return elementMenu;
    }

    function openDialog(){
        dialog.open = true;
    }

    function submit(){
        $.ajax({  
            type: "GET",  
            url: "/insertNode?module="+ $('#moduleDropDown').val() + "&model=" + $('#modelDropDown').val() + "&concept=" + $('#conceptDropDown').val(),  
            cache: false, 
            async: false,    
            success: function(response){
                try {
                    var output = JSON.parse(response);
                    window.location.href = "/"+output.nodeCreated;
                } catch (error) {
                    console.log(error);
                }
            }
        });
    }
    
    function closeDialog(){
        dialog.close('Closed');
    }
    function createAddButton() {
        createBtn.innerHTML = "Add Node";
        createBtn.setAttribute("id", "createButton");
        createBtn.addEventListener('click', function() {
            openDialog();
        });
        document.body.appendChild(createBtn);
    }
    function refreshModulesDropdown(){
        var moduleList = null;
        $.ajax({  
            type: "GET",  
            url: "/modules",  
            cache: false, 
            async: false,    
            success: function(response){
                try {
                    var output = JSON.parse(response);
                    moduleList = output["modules"];
                    moduleList.forEach(function (item, index) {
                        var moduleOption = document.createElement("option");
                        moduleOption.innerHTML = item;
                        moduleOption.value = item;
                        modulesMenu.appendChild(moduleOption);
                    });
                } catch (error) {
                    console.log(error);
                }
            }
        });
    }
    function refreshModelsDropdown() {
        var modelList = null;
        var length = modelsMenu.options.length;
        for (var i = length-1; i >= 0; i--) {
            modelsMenu.options[i] = null;
        }
        $.ajax({  
            type: "GET",  
            url: "/models?module="+ $('#moduleDropDown').val(),  
            cache: false, 
            async: false,    
            success: function(response){
                try {
                    var output = JSON.parse(response);
                    modelList = output["models"];
                    modelList.forEach(function (item, index) {
                        var modelOption = document.createElement("option");
                        modelOption.innerHTML = item;
                        modelOption.value = item;
                        modelsMenu.appendChild(modelOption);
                    });
                } catch (error) {
                    console.log(error);
                }
            }
        });
    }
    function refreshConceptsDropdown() {
        var conceptList = null;
        var length = conceptsMenu.options.length;
        for (var i = length-1; i >= 0; i--) {
            conceptsMenu.options[i] = null;
        }
        $.ajax({  
            type: "GET",  
            url: "/concepts?module="+ $('#moduleDropDown').val() + "&model=" + $('#modelDropDown').val(),  
            cache: false, 
            async: false,    
            success: function(response){
                try {
                    var output = JSON.parse(response);
                    conceptList = output["concepts"];
                    conceptList.forEach(function (item, index) {
                        var conceptOption = document.createElement("option");
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
});
