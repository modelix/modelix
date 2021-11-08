import $ = require("jquery");

export class NewNodeFromModel {
    static install() {
        let samplenode = null;
        samplenode = document.getElementById("sidebar");
        // console.log(samplenode);
        const callback = (mutationsList, observer) => {
            for (const mutationElement of mutationsList) {
                if (mutationElement.addedNodes.length > 0) {
                    // console.log("AA->" + mutationElement.attributeName);
                    for (const addedNode of mutationElement.addedNodes) {
                        if (addedNode instanceof HTMLElement) {
                            addedNode.childNodes.forEach(child => {
                                if (doesChildNodeHasButton(child as HTMLElement)) {
                                    let nodes = attachElements(child as HTMLElement);
                                    const newNodeButtonElements = (child as HTMLElement).getElementsByClassName('newnodefrommodel');
                                    const newNodeModelButtons = new Set<NewNodeFromModel>();
                                    for (let i = 0; i < newNodeButtonElements.length; i++) {
                                        newNodeModelButtons.add(new NewNodeFromModel(newNodeButtonElements[i] as HTMLElement, nodes[0] as string, nodes[1][i]))
                                    }
                                }
                            });
                        }
                    }
                }
            }
        }
        let mutationObserver = new MutationObserver(callback);
        const config = {
            childList: true,
            subtree: true,
            attributes: false,
            characterData: false
        };
        mutationObserver.observe(samplenode, config);

        function doesChildNodeHasButton(element: HTMLElement) {
            return element.getElementsByClassName('newnodefrommodel').length > 0;
        }

        function attachElements(element: HTMLElement) {
            let array = [];
            let components = element.children;
            for (const component of components) {
                if (component.tagName === 'UL') {
                    const childULElements = component.children;
                    for (const componentElement of childULElements) {
                        const childComponent = componentElement.children;
                        for (const childComponentElement of childComponent) {
                            if ((childComponentElement.tagName === 'A') && ((childComponentElement as HTMLElement).innerText !== '')) {
                                array.push((childComponentElement as HTMLElement).innerText);
                            }
                        }
                    }
                }
            }
            return [(element.querySelector('a') as HTMLElement).innerText, array];
        }
    }

    dialog = document.createElement("dialog");
    moduleName = '';
    modelName = '';
    conceptDropDownID = '';

    constructor(element: HTMLElement, moduleName: string, modelName: string) {
        this.moduleName = moduleName;
        this.modelName = modelName;
        this.conceptDropDownID = "conceptDropdownFor_" + this.filterInvalidCharactersForID(this.modelName.split(""));
        $(element).click((event) => {
            event.preventDefault();
            this.initialiseNewNodeCreation(moduleName, modelName);
        });
    }

    initialiseNewNodeCreation(moduleName: string, modelName: string) {
        console.log(this.conceptDropDownID);

        console.log(this.filterInvalidCharactersForID(modelName.split("")));
        this.initPopUpWithMenu(moduleName, modelName);
    }

    initPopUpWithMenu(moduleName: string, modelName: string) {
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

    createLabel(forValue, innerHTMLContent) {
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
        submitButton.onclick = event => {
            event.preventDefault();
            this.submit();
            this.closeDialog();
        };
        const closeButton = document.createElement("button");
        closeButton.setAttribute("class", "btn btn-primary");
        closeButton.innerHTML = "Close";
        closeButton.onclick = event => {
            event.preventDefault();
            this.closeDialog();
        };
        dialogMenu.appendChild(closeButton);
        dialogMenu.appendChild(submitButton);
        return dialogMenu;
    }

    closeDialog() {
        this.dialog.close('Closed');
    }

    submit() {
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