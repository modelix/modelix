import { UploadId } from "./types/upload";

/**
 * Handles uploading a files or directories
 * @param workspaceId
 */
export async function upload(data: FormData) {
  await fetch(`${import.meta.env.VITE_BACKEND_URL}/upload`, { method: "POST", body: data });
}

/**
 * Delete Upload from all workspaces
 * @param workspaceId
 */
export async function deleteUpload(uploadId: UploadId) {
  await fetch(`${import.meta.env.VITE_BACKEND_URL}/delete-upload?${new URLSearchParams({ uploadId })}`, {
    method: "POST"
  });
}
