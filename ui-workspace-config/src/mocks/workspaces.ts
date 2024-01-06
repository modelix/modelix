// organize-imports-ignore
import { Upload } from "../api/types/upload";
import { Workspace } from "../api/types/workspace";
// eslint-disable-next-line import/no-unresolved
import sampleFull from "./data/sample-full.yaml?raw";
// eslint-disable-next-line import/no-unresolved
import sampleRealistic from "./data/sample-realistic.yaml?raw";
// eslint-disable-next-line import/no-unresolved
import sampleRealistic2 from "./data/sample-realistic2.yaml?raw";

export const uploads: Upload[] = [
  { id: "123", canDelete: false, name: "some upload" },
  { id: "456", canDelete: true, name: "another-upload.zip" },
  {
    canDelete: true,
    id: "3800000003",
    name: "Durchblick-5380e22fc81c0a00dadc3f7a1a186c1205edb622.zip"
  }
];

export const workspaces: Workspace[] = [
  {
    name: "Full (random) sample",
    configurationText: sampleFull,
    canWrite: true,
    uploads: ["123", "456"],
    id: "ABCDEFGHIJKLMN"
  },
  {
    name: "Modelix Samples",
    configurationText: sampleRealistic,
    canWrite: true,
    uploads: ["3800000003"],
    id: "a00000001"
  },
  {
    name: "ChatGPT",
    configurationText: sampleRealistic2,
    canWrite: false,
    uploads: [],
    id: "24f00000002"
  }
];
