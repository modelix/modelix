import { Resource, createContext, createResource, useContext } from "solid-js";
import { queryWorkspaces } from "../api/queryWorkspaceInfo";
import { WorkspaceManagerConfiguration } from "../api/types/configuration";

const ManagerConfigContext = createContext<Resource<WorkspaceManagerConfiguration>>();
export function WorkspaceManagerConfigurationProvider(props) {
  const [workspaceInfos] = createResource(queryWorkspaces); //TODO handle loading/and error states of the
  return <ManagerConfigContext.Provider value={workspaceInfos}>{props.children}</ManagerConfigContext.Provider>;
}

export function useWorkspaceManagerConfig() {
  return useContext(ManagerConfigContext)!;
}
