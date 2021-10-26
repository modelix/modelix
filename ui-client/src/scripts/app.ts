import "../styles/base.scss";
import $ = require("jquery");
import {SVGContainer} from "./SVGContainer";
import {ShadowModelsBasedEditor} from "./ShadowModelsBasedEditor";
import {LiveHtml} from "./LiveHtml";
import {NewNodeFromModel} from "./NewNodeFromModel";

$(() => {
    const svgViewers = new Set<SVGContainer>();
    for (const element of document.getElementsByClassName("svgcontainer")) {
          svgViewers.add(new SVGContainer(element as HTMLElement));
    }

    const smViewers = new Set<ShadowModelsBasedEditor>();
    for (const element of document.getElementsByClassName("smviewer")) {
        smViewers.add(new ShadowModelsBasedEditor(element as HTMLElement));
    }
    const liveHtmlElements = new Set<LiveHtml>();
    for (const element of document.getElementsByClassName("livehtml")) {
        liveHtmlElements.add(new LiveHtml(element as HTMLElement));
    }
    let samplenode = null;
    samplenode = document.getElementById("sidebar");
    // console.log(samplenode);
    const callback = (mutationsList, observer) => {
        for (const mutationElement of mutationsList) {
            if (mutationElement.addedNodes.length > 0) {
               // console.log("AA->" + mutationElement.attributeName);
                for (const addedNode of mutationElement.addedNodes) {
                    if (addedNode instanceof HTMLElement){
                        addedNode.childNodes.forEach(child =>
                        {
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
        let array = new Array();
        let components = element.children;
        for (const component of components) {
            if (component.tagName === 'UL')  {
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
});
