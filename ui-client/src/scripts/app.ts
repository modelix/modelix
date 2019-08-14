import "../styles/base.scss";
import $ = require("jquery");
import {SvgBasedEditor} from "./SvgBasedEditor";
import {ShadowModelsBasedEditor} from "./ShadowModelsBasedEditor";

$(() => {

    const svgViewers = new Set<SvgBasedEditor>();
    for (const element of document.getElementsByClassName("svgviewer")) {
        svgViewers.add(new SvgBasedEditor(element as HTMLElement));
    }

    const smViewers = new Set<ShadowModelsBasedEditor>();
    for (const element of document.getElementsByClassName("smviewer")) {
        smViewers.add(new ShadowModelsBasedEditor(element as HTMLElement));
    }

});
