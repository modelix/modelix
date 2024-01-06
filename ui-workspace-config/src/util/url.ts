import { WORKSPACE_ID_URL_SEARCH_PARAM } from "../constants";

export function navigateToWorkspaceId(workspaceId: string) {
  const currentUrl = new URL(window.location.href);
  currentUrl.searchParams.set(WORKSPACE_ID_URL_SEARCH_PARAM, workspaceId);
  window.location.href = currentUrl.toString();
}

export function extractWorkspaceIdFromUrl(): string | undefined {
  const currentUrl = new URL(window.location.href);
  return currentUrl.searchParams.get(WORKSPACE_ID_URL_SEARCH_PARAM) ?? undefined;
}
