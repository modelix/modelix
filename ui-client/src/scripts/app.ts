import "../styles/base.scss";
import $ = require("jquery");
import {SvgBasedEditor} from "./SvgBasedEditor";
import {ShadowModelsBasedEditor} from "./ShadowModelsBasedEditor";

let svgeditor = new SvgBasedEditor(document.getElementById("viewer1"));

let smeditor = new ShadowModelsBasedEditor(document.getElementById("viewer2"));