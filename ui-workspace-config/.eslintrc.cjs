//---------------------------
// Shared Typescript Config
//---------------------------
const typescriptSharedConfig = {
  extends: "plugin:@typescript-eslint/recommended",
  plugins: ["@typescript-eslint"],
  parser: "@typescript-eslint/parser",
  parserOptions: {
    project: ["./tsconfig.json"]
  },
  settings: {
    "import/resolver": {
      node: {
        extensions: [".ts"]
      }
    }
  },
  rules: {
    "no-shadow": "off",
    "no-continue": "off",
    "@typescript-eslint/no-shadow": "error",
    "@typescript-eslint/return-await": "error",
    "@typescript-eslint/no-floating-promises": "error",
    "@typescript-eslint/no-unused-vars": ["error"]
  }
};

module.exports = {
  //---------------------------
  // Globally Shared Config
  //---------------------------
  extends: ["eslint:recommended", "airbnb-base", "prettier"],
  plugins: ["import"],
  ignorePatterns: ["tmp/**/*", "**/node_modules/"],
  env: {
    // NOTE: The env setting should be kept consistent with the `lib` entry in `tsconfig.base.json`
    es2020: true
  },
  rules: {
    "import/extensions": ["error", "ignorePackages", { js: "never", ts: "never" }],
    "import/no-extraneous-dependencies": [
      "error",
      {
        devDependencies: ["**/*.test.ts", "**/scripts/**", "**/*.config.ts", "jest.domenvironment.js"]
      }
    ],
    "no-restricted-syntax": [
      "error",
      {
        selector: ':matches(PropertyDefinition, MethodDefinition)[accessibility="private"]',
        message: "Use # prefix instead of `private` to indicate private class members."
      },
      {
        selector: "LabeledStatement",
        message: "Labels are a form of GOTO; using them makes code confusing and hard to maintain and understand."
      },
      {
        selector: "WithStatement",
        message: "`with` is disallowed in strict mode because it makes code impossible to predict and optimize."
      }
    ],
    "import/no-unresolved": [2, { ignore: ["vscode"] }],
    "import/prefer-default-export": "off",
    "no-shadow": "warn",
    "no-underscore-dangle": "off",
    "no-use-before-define": "warn",
    "no-useless-constructor": "off"
  },
  reportUnusedDisableDirectives: true,
  overrides: [
    //---------------------------
    // Non-Jest Typescript Config
    //---------------------------
    {
      files: ["**/*.ts"],
      ...typescriptSharedConfig
    },

    //---------------------------
    // Jest Typescript Config
    //---------------------------
    {
      files: ["**/*.test.ts", "**/__mocks__/*"],
      env: {
        jest: true
      },
      ...typescriptSharedConfig
    },

    //---------------------------
    // Javascript Config
    //---------------------------
    {
      files: ["**/*.js"],
      settings: {
        "import/resolver": {
          node: {
            extensions: [".js"]
          }
        }
      },
      parserOptions: {
        // NOTE: "ecmaVersion: 2020" is needed in order to avoid the error
        //       "ESLint: Parsing error: Unexpected token ." when using the Optional Chaining `?.`
        //       operator in `*.js` files. It is required even though `env: { es2020: true }` is in
        //       the global config, which should automatically set `ecmaVersion: 2020` according to
        //       https://eslint.org/docs/latest/user-guide/configuring/language-options#specifying-environments
        ecmaVersion: 2020
      },
      rules: {
        "no-console": "off" // `no-console': 'off` so we can output from js build/utility scripts
      }
    }
  ]
};
