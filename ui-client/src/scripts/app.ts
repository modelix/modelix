import "../styles/base.scss";
import $ = require("jquery");
import {SvgBasedEditor} from "./SvgBasedEditor";
import {ShadowModelsBasedEditor} from "./ShadowModelsBasedEditor";

let svgeditor = new SvgBasedEditor(document.getElementById("viewer1"));

const smViewers = new Set<ShadowModelsBasedEditor>();
for (const element of document.getElementsByClassName("smviewer")) {
    smViewers.add(new ShadowModelsBasedEditor(element as HTMLElement));
}
