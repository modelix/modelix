import { Show } from "solid-js";
import { useWorkspaceManagerConfig } from "../../context/workspace-manger-configuration";
import { NewUpload } from "./NewUpload";
import { UploadsTable } from "./UploadsTable";
import { UploadTableProps } from "./uploadProps";

export const UploadSection = (props: UploadTableProps) => {
  const workspaceInfos = useWorkspaceManagerConfig();
  const maxFileSize = () => workspaceInfos()?.environment.maxBodySize;

  return (
    <div class="tile is-parent is-vertical" id="upload-section">
      <div class="tile is-child box">
        <p class="is-2 title">Uploads</p>
        <UploadsTable {...props} />
      </div>
      <div class="tile is-child box">
        <Show when={props.workspace.canWrite}>
          <p class="title is-2">Upload new file or directory</p>
          <p class="subtitle is-7">max ~{maxFileSize()} MiB</p>
          <NewUpload />
        </Show>
      </div>
    </div>
  );
};
