import * as monaco from "monaco-editor/esm/vs/editor/editor.api.js";

export type Props = {
  onProblemClick: (line: number, column: number) => void;
  marker: monaco.editor.IMarker;
};

const getMarkerIconClass = (severity) =>
  severity === monaco.MarkerSeverity.Warning ? "codicon-warning" : "codicon-error";

export function Problem(props: Props) {
  return (
    <div
      role="button"
      class="problem"
      onClick={() => props.onProblemClick(props.marker.startLineNumber, props.marker.startColumn)}>
      <div class={`codicon ${getMarkerIconClass(props.marker.severity)}`}></div>
      <div class="problem-text">{props.marker.message}</div>
    </div>
  );
}
