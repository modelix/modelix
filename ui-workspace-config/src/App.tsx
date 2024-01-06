import { Show } from "solid-js";
import { Context } from "./context/context";
import { WorkspaceConfiguration } from "./ui-components/WorkspaceConfiguration";
import { WorkspaceSelector } from "./ui-components/WorkspaceSelector";
import { extractWorkspaceIdFromUrl } from "./util/url";

export function App() {
  const workspaceId = extractWorkspaceIdFromUrl();

  return (
    <Context>
      <Show when={workspaceId !== undefined} fallback={<WorkspaceSelector></WorkspaceSelector>}>
        <WorkspaceConfiguration workspaceId={workspaceId!} />
      </Show>
    </Context>
  );
}
