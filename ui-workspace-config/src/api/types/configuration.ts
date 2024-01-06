import { Upload } from "./upload";
import { WorkspaceInfo } from "./workspace";

export type EnvironmentConfig = {
  /// Maximum upload body size in MiB
  maxBodySize: number;
};

export type WorkspaceManagerConfiguration = {
  workspaces: WorkspaceInfo[];
  uploads: Upload[];
  environment: EnvironmentConfig;
};
