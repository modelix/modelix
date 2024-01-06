import { UploadId } from "./upload";

export type WorkspaceId = string;
export type WorkspaceInfo = { id: WorkspaceId; name: string };

// TODO Right now it appears to makes sense to leave most of this as a text.
// Apart from the uploads we do not have any other use for this
export type Workspace = {
  id: WorkspaceId;
  name: string;
  canWrite: boolean;
  configurationText: string;
  uploads: UploadId[];
};
