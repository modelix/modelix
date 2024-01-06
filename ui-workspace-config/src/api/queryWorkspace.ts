import { Workspace } from "./types/workspace";

export async function queryConfigText(id: string): Promise<Workspace> {
  const response = await fetch(`${import.meta.env.VITE_BACKEND_URL}/workspace-manager/${id}/edit`);
  const workspace = (await response.json()) as Workspace;

  workspace.uploads.sort();

  return workspace;
}
