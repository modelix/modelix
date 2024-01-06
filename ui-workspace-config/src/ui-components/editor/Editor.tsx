import * as monaco from "monaco-editor/esm/vs/editor/editor.api.js";
import { Show, createEffect, createSignal, onMount } from "solid-js";
import { useEditorModel } from "../../context/editor-model";
import { useWorkspaceManagerConfig } from "../../context/workspace-manger-configuration";
import "./Editor.css";
import { Problems } from "./Problems";
import { setUploadOptions, setupEditor, setupWorker } from "./lsp-setup";

setupWorker();

export type Props = { textRaw: string; canWrite: boolean };

export const Editor = (props: Props) => {
  let editorContainer!: HTMLDivElement;
  const [model, { setText, jumpToLine }] = useEditorModel()!;
  const workspaceInfos = useWorkspaceManagerConfig();
  let [editor, setEditor] = createSignal<monaco.editor.IStandaloneCodeEditor | undefined>(undefined);

  onMount(() => {
    if (editor() !== undefined) return;
    const ed = setupEditor(editorContainer, model);
    setEditor(ed);
  });

  createEffect(() => {
    const ed = editor();
    if (ed === undefined) return;
    const lineToReveal = jumpToLine.onUpdate();
    ed.revealLine(lineToReveal, monaco.editor.ScrollType.Smooth);
    ed.setPosition({
      lineNumber: lineToReveal,
      column: 1
    });
  });

  createEffect(() => {
    const availableUploads = workspaceInfos()?.uploads;
    if (availableUploads === undefined) return;
    const uploadIds = availableUploads.map((u) => u.id);

    setUploadOptions(uploadIds);
  });

  createEffect(() => {
    const ed = editor();
    if (ed === undefined) return;
    setText(props.textRaw);
    ed.updateOptions({ readOnly: !props.canWrite });
    jumpToLine.update(1);
  });

  const handleProblemClick = (line: number, column: number) => {
    const ed = editor();
    if (ed === undefined) return;
    ed.setPosition({
      lineNumber: line,
      column
    });
    ed.focus();
    ed.revealLine(line, monaco.editor.ScrollType.Smooth);
  };

  return (
    <div class="the-editor">
      <div class="editor-text-container" ref={editorContainer}></div>
      <Show when={editor() !== undefined}>
        <Problems onProblemClick={handleProblemClick}></Problems>
      </Show>
    </div>
  );
};
