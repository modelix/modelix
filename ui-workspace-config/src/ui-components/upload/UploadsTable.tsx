import { For, Show } from "solid-js";
import { Upload, UploadId } from "../../api/types/upload";
import { deleteUpload } from "../../api/upload";
import { useEditorModel } from "../../context/editor-model";
import { useWorkspaceManagerConfig } from "../../context/workspace-manger-configuration";
import { UploadTableProps } from "./uploadProps";

export function UploadsTable(props: UploadTableProps) {
  const [_, { addUpload, removeUpload, jumpToLine, uploadIdsFromText }] = useEditorModel()!;

  const workspaceInfos = useWorkspaceManagerConfig();
  const availableUploads = () => workspaceInfos()?.uploads;
  const usedUploads = () => {
    const usedUploadsIds = uploadIdsFromText.onUpdate();
    return (
      availableUploads()
        ?.map((u) => u.id)
        .filter((available) => usedUploadsIds.includes(available)) ?? []
    );
  };

  const handleDelete = async (id: UploadId) => {
    await deleteUpload(id);
    alert("Upload deleted. Please refresh the page."); // TODO: See comment in NewUpload.tsx
  };

  const handleRemove = async (id: UploadId) => {
    const line = await removeUpload(id);
    if (line < 0) return;
    jumpToLine.update(line);
  };

  const handleAdd = async (upload: Upload) => {
    const line = await addUpload(upload);
    if (line < 0) return;
    jumpToLine.update(line);
  };

  return (
    <div class="table-container is-narrow is-size-4 buttons are-small">
      <table class="table">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th> </th>
            <th> </th>
          </tr>
        </thead>
        <tbody>
          <For each={availableUploads()}>
            {(upload) => (
              <tr>
                <td>{upload.id}</td>
                <td>{upload.name}</td>
                <td>
                  <form
                    onSubmit={(evt) => {
                      evt.preventDefault();
                      usedUploads().includes(upload.id) ? handleRemove(upload.id) : handleAdd(upload);
                    }}>
                    <div class="control">
                      <Show
                        when={usedUploads().includes(upload.id)}
                        fallback={<input class="button" type="submit" value={"Add"}></input>}>
                        <input class="button" type="submit" value={"Remove"}></input>
                      </Show>
                    </div>
                  </form>
                </td>
                <td>
                  <Show when={upload.canDelete}>
                    <form
                      onSubmit={(evt) => {
                        evt.preventDefault();
                        handleDelete(upload.id);
                      }}>
                      <div class="control">
                        <input class="button is-danger is-light" type="submit" value={"Delete"}></input>
                      </div>
                    </form>
                  </Show>
                </td>
              </tr>
            )}
          </For>
        </tbody>
      </table>
    </div>
  );
}
