import * as monaco from "monaco-editor/esm/vs/editor/editor.api.js";
import { For, createSignal, onCleanup, onMount } from "solid-js";
import { Problem } from "./Problem";
import "./Problems.css";

export type Props = {
  onProblemClick: (line: number, column: number) => void;
};

export function Problems(props: Props) {
  const [markers, setMarkers] = createSignal<monaco.editor.IMarker[]>([]);
  let disposable: monaco.IDisposable | undefined;
  onMount(() => {
    setMarkers([]);
    disposable = monaco.editor.onDidChangeMarkers(([resource]) => {
      const problems = monaco.editor
        .getModelMarkers({ resource })
        .filter((marker) => marker.severity !== monaco.MarkerSeverity.Hint);
      setMarkers(problems);
    });
  });

  onCleanup(() => {
    disposable?.dispose();
  });

  return (
    <div class="problems-container">
      <For each={markers()}>{(marker) => <Problem marker={marker} onProblemClick={props.onProblemClick} />}</For>
    </div>
  );
}
