import { WorkspaceId } from "./types/workspace";

export async function saveText(workspaceId: WorkspaceId, configText: string): Promise<void> {
  await fetch(`${import.meta.env.VITE_BACKEND_URL}/${workspaceId}/update`, { method: "POST", body: configText });
}
