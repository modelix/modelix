import { render } from "solid-js/web";
import "./index.scss";

async function enableMocking() {
  // TODO: comment this in once we have a functional backend
  // if (import.meta.env.PROD  ) {
  //   return;
  // }
  await import("solid-devtools");

  const { worker } = await import("./mocks/browser");

  // `worker.start()` returns a Promise that resolves
  // once the Service Worker is up and ready to intercept requests.
  return worker.start();
}

import { App } from "./App";

const root = document.getElementById("root");

if (import.meta.env.DEV && !(root instanceof HTMLElement)) {
  throw new Error(
    "Root element not found. Did you forget to add it to your index.html? Or maybe the id attribute got misspelled?"
  );
}

enableMocking().then(() => {
  render(() => <App />, root!);
});
