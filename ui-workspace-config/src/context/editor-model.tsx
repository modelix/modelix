import * as monaco from "monaco-editor";
import { createContext, useContext } from "solid-js";
import * as yaml from "yaml";
import { Upload, UploadId } from "../api/types/upload";
import { TAB_SIZE } from "../constants";
import { SolidEvent } from "../util/SolidEvent";

export type EditorModelOps = {
  setText(rawText: string): void;
  getText(): string;
  // returns line number of the upload
  addUpload(upload: Upload): number;
  // returns line number of uploads array, -1 if the whole element was deleted
  removeUpload(uploadId: UploadId): number;
  // 1-based line to jump to
  jumpToLine: SolidEvent<number>;
  uploadIdsFromText: SolidEvent<string[]>;
};

export type EditorModelState = [monaco.editor.IModel, EditorModelOps];

const EditorModelContext = createContext<EditorModelState>();

function parseFromModelText(model: monaco.editor.IModel): [yaml.Document, yaml.YAMLSeq] {
  const rawConfigText = model.getValue();
  const doc = yaml.parseDocument(rawConfigText);
  let uploads = getUploadsSeq(doc);
  return [doc, uploads];
}

function findUploadNodeIdx(uploads: yaml.YAMLSeq, uploadId: UploadId): number {
  return uploads.items.findIndex(
    (i) => ((i as yaml.Pair<yaml.ParsedNode, yaml.ParsedNode>).value as unknown as string) === uploadId
  );
}

function getUploadsSeq(doc: yaml.Document): yaml.YAMLSeq {
  let uploads = doc.get("uploads") as unknown as yaml.YAMLSeq | undefined;
  if (uploads === undefined) {
    uploads = doc.createNode([]) as unknown as yaml.YAMLSeq;
    doc.set("uploads", uploads);
  }

  return uploads;
}

function getUploadIds(model: monaco.editor.IModel): UploadId[] {
  const [_, uploads] = parseFromModelText(model);
  return uploads.items.map((i) => (i as yaml.Pair<yaml.ParsedNode, yaml.ParsedNode>).value as unknown as string);
}

function updateModel(doc: yaml.Document, model: monaco.editor.IModel) {
  /*
      Note this is text generated from the AST,
      That means, formatting is done by the YAML lib.
      While comments are preserved, some other hidden tokens like whitespace/indentation isn't.

      For our purposes, this should be enough.
    */
  const roundTrippedText = doc.toString({ indent: TAB_SIZE });
  model?.setValue(roundTrippedText);
}

/**
 * Used for determining the most appropriate position in the text
 * for showing in the editor after an update of the uploads array.
 *
 * Since we need to link nodes to character offsets, this entails
 * parsing the document once again after it was updated andserialized.
 *
 * @param rawText raw document text
 * @param nodeIdx Index of the targeted upload in the upload's list; or -1
 * @returns character offset if scuccessfull, -1 otherwise
 */
function getUploadNodeOffset(rawText: string, nodeIdx: number): number {
  const doc = yaml.parseDocument(rawText);
  let uploads = doc.get("uploads") as unknown as yaml.YAMLSeq | undefined;
  let uploadNodeOffset = -1;
  if (uploads !== undefined) {
    if (nodeIdx < 0) {
      uploadNodeOffset = uploads.range![0];
    } else {
      const uploadNode = uploads.items[nodeIdx]! as yaml.ParsedNode;
      uploadNodeOffset = uploadNode.range[0];
    }
  }

  return uploadNodeOffset;
}

function uploadNodeIndexToLineNumber(model: monaco.editor.IModel, nodeIdx: number): number {
  const uploadNodeOffset = getUploadNodeOffset(model.getValue(), nodeIdx);
  const line = uploadNodeOffset >= 0 ? model.getPositionAt(uploadNodeOffset).lineNumber : -1;
  return line;
}

export function EditorModelProvider(props) {
  const modelUri = monaco.Uri.parse(`monaco-yaml.yaml`);
  const model = monaco.editor.createModel("", "yaml", modelUri);
  const uploadIdsFromText = new SolidEvent<string[]>([]);
  model.onDidChangeContent((changeEvent) => {
    const newUploadIdsFromText = getUploadIds(model);
    uploadIdsFromText.update(newUploadIdsFromText);
  });

  const ops: EditorModelOps = {
    setText(rawText: string): void {
      model.setValue(rawText);
    },
    getText(): string {
      return model.getValue();
    },
    addUpload(upload: Upload): number {
      let [doc, uploads] = parseFromModelText(model);

      let uploadNodeIdx = findUploadNodeIdx(uploads, upload.id);
      if (uploadNodeIdx < 0) {
        const uploadNode = doc.createNode(upload.id);
        uploadNode.comment = ` Upload id for '${upload.name}'`;
        uploads.add(uploadNode);
        uploadNodeIdx = uploads.items.length - 1;
      }

      updateModel(doc, model);

      return uploadNodeIndexToLineNumber(model, uploadNodeIdx);
    },
    removeUpload(uploadId: UploadId): number {
      let [doc, uploads] = parseFromModelText(model);

      const uploadNodeIdx = findUploadNodeIdx(uploads, uploadId);
      let returnLineNumber = -1;
      if (uploadNodeIdx >= 0) {
        uploads.delete(uploadNodeIdx);
        const hasUploads = uploads.items.length !== 0;

        if (!hasUploads) {
          doc.delete("uploads");
        }
        updateModel(doc, model);

        if (hasUploads) {
          returnLineNumber = uploadNodeIndexToLineNumber(model, -1);
        }
      }
      return returnLineNumber;
    },
    jumpToLine: new SolidEvent<number>(-1),
    uploadIdsFromText
  };
  const state: EditorModelState = [model, ops];

  return <EditorModelContext.Provider value={state}>{props.children}</EditorModelContext.Provider>;
}

export function useEditorModel() {
  return useContext(EditorModelContext);
}
