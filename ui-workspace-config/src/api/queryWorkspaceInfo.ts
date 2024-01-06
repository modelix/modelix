import { WorkspaceManagerConfiguration } from "./types/configuration";

export async function queryWorkspaces() {
  const response = await fetch(`${import.meta.env.VITE_BACKEND_URL}/workspace-manager`);
  const results = (await response.json()) as WorkspaceManagerConfiguration;

  return results;
}
