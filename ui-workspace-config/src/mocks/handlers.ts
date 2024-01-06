import { HttpHandler, HttpResponse, http } from "msw";
import { WorkspaceManagerConfiguration } from "../api/types/configuration";
import { uploads, workspaces } from "./workspaces";

export const handlers: HttpHandler[] = [
  http.get(`${import.meta.env.VITE_BACKEND_URL}/workspace-manager/:id/edit`, ({ params }) => {
    // TODO: I wonder: Is  there an edito-lock or something for the workspace configs?
    const { id } = params;
    const workspace = workspaces.find((ws) => ws.id === id);

    if (workspace === undefined) {
      throw Error(`Unknown configuration id '${id}'`);
    }

    return HttpResponse.json(workspace);
  }),
  http.get(`${import.meta.env.VITE_BACKEND_URL}/workspace-manager`, () => {
    const workspaceInfos = workspaces.map((ws) => ({ id: ws.id, name: ws.name }));
    const result: WorkspaceManagerConfiguration = {
      uploads,
      environment: {
        maxBodySize: 200
      },
      workspaces: workspaceInfos
    };
    return HttpResponse.json(result);
  }),
  http.post(`${import.meta.env.VITE_BACKEND_URL}/upload`, async ({ request }) => {
    const info = await request.formData();
    console.log(info.getAll("file"));
    console.log(info.getAll("folder"));
    return HttpResponse.json({}); // TODO might wanna define a response object with some additional info
  }),
  http.post(`${import.meta.env.VITE_BACKEND_URL}/delete-upload`, async ({ request }) => {
    const url = new URL(request.url);
    const uploadId = url.searchParams.get("uploadId");

    if (!uploads.some((upload) => upload.id === uploadId)) {
      throw Error(`Unknown upload id '${uploadId}'`);
    }
    // TODO: actual implementation woul dhave to check write access for upload and also the associated workspaces that are modified.

    return HttpResponse.json({}); // TODO might wanna define a response object with some additional info
  }),
  http.post(`${import.meta.env.VITE_BACKEND_URL}/:workspaceId/update`, async ({ request, params }) => {
    const { workspaceId } = params;

    if (!workspaces.some((workspace) => workspace.id === workspaceId)) {
      throw Error(`Unknown workspace id '${workspaceId}'`);
    }
    // TODO: actual implementation would have to check write access

    const text = await request.text();
    console.log(text);

    return HttpResponse.json({}); // TODO might wanna define a response object with some additional info
  })
];
