import { Show, createResource } from "solid-js";
import { queryConfigText } from "../api/queryWorkspace";
import { saveText } from "../api/saveText";
import { useEditorModel } from "../context/editor-model";
import "./WorkspaceConfiguration.css";
import { Editor } from "./editor/Editor";
import { UploadSection } from "./upload/UploadSection";
export type Props = {
  workspaceId: string;
};

export const WorkspaceConfiguration = (props: Props) => {
  const [_, { getText: getEditorText }] = useEditorModel()!;

  const textQuery = () => queryConfigText(props.workspaceId ?? "");
  const [workspace] = createResource(props.workspaceId, textQuery);

  const handleSaveText = async () => {
    const workspaceId = props.workspaceId;
    if (workspaceId === undefined) return;
    const rawText = getEditorText();
    await saveText(workspaceId, rawText);
    // TODO: We need some kind of visual feedback on success here
  };

  return (
    <>
      <h1 class="title is-1">Edit workspace configuration '{workspace()?.name}'</h1>
      <Show when={workspace() !== undefined} fallback={<p class="title is-2">Comm. error or workspace ID unknown</p>}>
        <div class="tile is-ancestor">
          <div class="tile is-parent is-vertical">
            <div class="tile is-horizontal is-parent">
              <div class="tile is-child">
                <div class="tile is-parent box ed-box">
                  <div class="tile is-child">
                    <Editor textRaw={workspace()!.configurationText} canWrite={workspace()!.canWrite}></Editor>
                  </div>
                </div>
                <div class="tile is-child">
                  <button
                    class="button is-primary is-large"
                    onClick={handleSaveText}
                    disabled={!(workspace()?.canWrite ?? false)}>
                    Save Changes
                  </button>
                </div>
              </div>
              <div class="tile is-child is-narrow">
                <UploadSection workspace={workspace()!}></UploadSection>
              </div>
            </div>
          </div>
        </div>
      </Show>
    </>
  );
};
