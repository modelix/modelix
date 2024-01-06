/// <reference types="vitest" />
/// <reference types="vite/client" />

import { defineConfig } from "vitest/config";
import solidPlugin from "vite-plugin-solid";

// eslint-disable-next-line import/no-unresolved
import devtools from "solid-devtools/vite";

export default defineConfig({
  plugins: [
    /*
    Uncomment the following line to enable solid-devtools.
    For more info see https://github.com/thetarnav/solid-devtools/tree/main/packages/extension#readme
    */
    devtools(),
    solidPlugin()
  ],
  server: {
    port: 3000
  },
  test: {
    environment: "jsdom",
    globals: true,
    setupFiles: ["node_modules/@testing-library/jest-dom/extend-expect.js"],
    // if you have few tests, try commenting one
    // or both out to improve performance:
    isolate: false
  },
  build: {
    target: "esnext",
    rollupOptions: {
      output: {
        manualChunks: {
          "monaco-editor": ["monaco-editor"],
          "monaco-yaml": ["monaco-yaml"]
        }
      }
    }
  },
  resolve: {
    conditions: ["development", "browser"]
  }
});
