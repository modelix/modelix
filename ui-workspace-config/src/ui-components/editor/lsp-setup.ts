import * as monaco from "monaco-editor/esm/vs/editor/editor.api";
import { configureMonacoYaml, type SchemasSettings } from "monaco-yaml";
import schema from "../../assets/schema.json";
import { TAB_SIZE } from "../../constants";
import { getEmSizeInPx } from "../../util/size-calc";
import "./monaco-import";
// eslint-disable-next-line import/no-unresolved
import YamlWorker from "./yaml-worker?worker";

export function setupWorker() {
  window.MonacoEnvironment = {
    getWorker(moduleId, label) {
      switch (label) {
        case "yaml":
          return new YamlWorker();
        default:
          throw new Error(`Unknown label ${label}`);
      }
    }
  };
}

const modelixWorkspaceConfigSchema: SchemasSettings = {
  uri: "file://./workspace.schema.json",
  // @ts-expect-error TypeScript can’t narrow down the type of JSON imports
  schema,
  fileMatch: ["**"]
};

const monacoYaml = configureMonacoYaml(monaco, {
  enableSchemaRequest: false,
  schemas: [modelixWorkspaceConfigSchema]
});

export function setupEditor(editorContainer, model) {
  const style = getComputedStyle(document.documentElement);

  const editorFontSize = style.getPropertyValue("--editor-font-size");
  const emSizeInPix = getEmSizeInPx(editorContainer);
  const fontSizeEm = Number(editorFontSize.split("rem")[0]);
  const fontSize = emSizeInPix * fontSizeEm;

  const theme = style.getPropertyValue("--editor-theme");

  const ed = monaco.editor.create(editorContainer, {
    automaticLayout: true,
    model,
    theme,
    quickSuggestions: {
      other: true,
      comments: false,
      strings: true
    },
    readOnlyMessage: { value: "You do not have sufficient rights to edit this configuration" },
    renderValidationDecorations: "on",
    tabSize: TAB_SIZE,
    fontSize
  });
  return ed;
}

export const setUploadOptions = (value: string[]): void => {
  schema!.properties.uploads.items.enum = value;
  monacoYaml.update({
    schemas: [modelixWorkspaceConfigSchema]
  });
};
