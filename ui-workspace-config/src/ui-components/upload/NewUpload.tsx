import { createSignal } from "solid-js";
import { upload } from "../../api/upload";

const NOTHING_SELECTED_TEXT = "nothing selected";
export function NewUpload() {
  let formRef!: HTMLFormElement;

  const [fileName, setFileName] = createSignal<string>(NOTHING_SELECTED_TEXT);
  const [folderName, setFolderName] = createSignal<string>(NOTHING_SELECTED_TEXT);

  const handleSubmit = async (event: Event) => {
    event.preventDefault();
    const data = new FormData(formRef);
    await upload(data); //TODO Handle issues, results, progress and so on
    // We just instruct the user to reload the page.
    // Alternative would be to handle an update of our uploads list, while keeping the editor state.
    // We do not want to put any more effort into this, since uploads will go away soon anyway
    alert("File uploaded. Please refresh the page to use it.");
  };

  const getFileText = (evt): string => {
    evt.preventDefault();
    const targetFiles = (evt.target as HTMLInputElement)?.files ?? [];

    if (targetFiles.length === 1) {
      return targetFiles[0].name;
    }
    if (targetFiles.length > 1) {
      return `${targetFiles.length} files selected`;
    }
    return NOTHING_SELECTED_TEXT;
  };

  const handleFileChange = (evt) => {
    setFileName(getFileText(evt));
  };
  const handleFolderChange = (evt) => {
    setFolderName(getFileText(evt));
  };

  return (
    <form method="post" enctype="multipart/form-data" onsubmit={handleSubmit} ref={formRef}>
      <div class="field">
        <div class="file is-info is-small">
          <label class="file-label">
            <input class="file-input" type="file" name="file" multiple onChange={handleFileChange} />
            <span class="file-cta">
              <span class="file-icon">
                <i class="fas fa-upload"></i>
              </span>
              <span class="file-label">Choose file(s)</span>
            </span>
            <span class="file-name">{fileName()}</span>
          </label>
        </div>
      </div>
      <div class="field">
        <div class="file is-info is-small">
          <label class="file-label">
            {/*prettier-ignore*/}
            <div>
            {/* @ts-expect-error*/}
            <input webkitdirectory="true"
              class="file-input"
              name="folder"
              type="file"
              mozdirectory="true"
              onChange={handleFolderChange}
            />
            </div>
            <span class="file-cta">
              <span class="file-icon">
                <i class="fas fa-upload"></i>
              </span>
              <span class="file-label">Choose Directory</span>
            </span>
            <span class="file-name">{folderName()}</span>
          </label>
        </div>
      </div>
      <div class="control">
        <input class="button is-primary is-light is-large" type="submit" value={"Upload"}></input>
      </div>
    </form>
  );
}
