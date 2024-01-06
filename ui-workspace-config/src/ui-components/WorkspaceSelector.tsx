import { For, Show } from "solid-js";
import { useWorkspaceManagerConfig } from "../context/workspace-manger-configuration";
import { navigateToWorkspaceId } from "../util/url";

/**
 * This is really only intended for use in development.
 * The page is built so we can redirect directly to the configuration editor via a URL parameter
 */
export function WorkspaceSelector() {
  const workspaceInfos = useWorkspaceManagerConfig();

  return (
    <>
      <h1 class="title is-1">Configuration editor standalone Demo</h1>
      <Show when={!workspaceInfos.loading} fallback={<>Loading workspaces...</>}>
        <p>Please elect a Workspace: </p>
        <select
          id="workspaces"
          onclick={(e) => {
            e.preventDefault();
            const workspaceId = e.currentTarget.value;
            if (workspaceId === undefined) {
              throw new Error("Could not recover workspace ID");
            }
            navigateToWorkspaceId(workspaceId);
          }}>
          <For each={workspaceInfos()?.workspaces}>
            {({ name, id }) => (
              <option value={id}>
                {name} (ID: {id})
              </option>
            )}
          </For>
        </select>
      </Show>
    </>
  );
}
