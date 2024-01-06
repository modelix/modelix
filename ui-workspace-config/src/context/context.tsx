import { EditorModelProvider } from "./editor-model";
import { WorkspaceManagerConfigurationProvider } from "./workspace-manger-configuration";

export function Context(props) {
  return (
    <WorkspaceManagerConfigurationProvider>
      <EditorModelProvider>{props.children}</EditorModelProvider>
    </WorkspaceManagerConfigurationProvider>
  );
}
