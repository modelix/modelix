// These imports are copied from https://github.com/microsoft/monaco-editor/blob/dfca77d07111fd0ac192a15535cbdce3ee4157b8/samples/browser-esm-webpack-small/index.js
// Use scripts/generate-monaco-imports.sh to generate a version of the imports that matches the used Monaco version
// In case this stops working, use 'import * as monaco from "monaco-editor/esm/vs/editor/editor.api";' instead
// The advantage of this variant is, that we do not bundle any languages and features we don't need

// language import
import "monaco-editor/esm/vs/basic-languages/yaml/yaml.contribution";

// features
// import "monaco-editor/esm/vs/editor/browser/coreCommands";
import "monaco-editor/esm/vs/editor/browser/widget/codeEditorWidget";
// import "monaco-editor/esm/vs/editor/browser/widget/diffEditor/diffEditor.contribution";
import "monaco-editor/esm/vs/editor/contrib/anchorSelect/browser/anchorSelect";
import "monaco-editor/esm/vs/editor/contrib/bracketMatching/browser/bracketMatching";
// import "monaco-editor/esm/vs/editor/contrib/caretOperations/browser/caretOperations";
// import "monaco-editor/esm/vs/editor/contrib/caretOperations/browser/transpose";
import "monaco-editor/esm/vs/editor/contrib/clipboard/browser/clipboard";
// import "monaco-editor/esm/vs/editor/contrib/codeAction/browser/codeActionContributions";
// import "monaco-editor/esm/vs/editor/contrib/codelens/browser/codelensController";
// import "monaco-editor/esm/vs/editor/contrib/colorPicker/browser/colorContributions";
// import "monaco-editor/esm/vs/editor/contrib/colorPicker/browser/standaloneColorPickerActions";
import "monaco-editor/esm/vs/editor/contrib/comment/browser/comment";
import "monaco-editor/esm/vs/editor/contrib/contextmenu/browser/contextmenu";
import "monaco-editor/esm/vs/editor/contrib/cursorUndo/browser/cursorUndo";
// import "monaco-editor/esm/vs/editor/contrib/dnd/browser/dnd";
import "monaco-editor/esm/vs/editor/contrib/documentSymbols/browser/documentSymbols";
import "monaco-editor/esm/vs/editor/contrib/dropOrPasteInto/browser/copyPasteContribution";
// import "monaco-editor/esm/vs/editor/contrib/dropOrPasteInto/browser/dropIntoEditorContribution";
import "monaco-editor/esm/vs/editor/contrib/find/browser/findController";
import "monaco-editor/esm/vs/editor/contrib/folding/browser/folding";
// import "monaco-editor/esm/vs/editor/contrib/fontZoom/browser/fontZoom";
import "monaco-editor/esm/vs/editor/contrib/format/browser/formatActions";
import "monaco-editor/esm/vs/editor/contrib/gotoError/browser/gotoError";
import "monaco-editor/esm/vs/editor/contrib/gotoSymbol/browser/goToCommands";
import "monaco-editor/esm/vs/editor/contrib/gotoSymbol/browser/link/goToDefinitionAtPosition";
import "monaco-editor/esm/vs/editor/contrib/hover/browser/hover";
import "monaco-editor/esm/vs/editor/contrib/indentation/browser/indentation";
// import "monaco-editor/esm/vs/editor/contrib/inlayHints/browser/inlayHintsContribution";
import "monaco-editor/esm/vs/editor/contrib/inlineCompletions/browser/inlineCompletions.contribution";
// import "monaco-editor/esm/vs/editor/contrib/inlineProgress/browser/inlineProgress";
import "monaco-editor/esm/vs/editor/contrib/inPlaceReplace/browser/inPlaceReplace";
import "monaco-editor/esm/vs/editor/contrib/lineSelection/browser/lineSelection";
import "monaco-editor/esm/vs/editor/contrib/linesOperations/browser/linesOperations";
import "monaco-editor/esm/vs/editor/contrib/linkedEditing/browser/linkedEditing";
import "monaco-editor/esm/vs/editor/contrib/links/browser/links";
// import "monaco-editor/esm/vs/editor/contrib/longLinesHelper/browser/longLinesHelper";
import "monaco-editor/esm/vs/editor/contrib/multicursor/browser/multicursor";
// import "monaco-editor/esm/vs/editor/contrib/parameterHints/browser/parameterHints";
import "monaco-editor/esm/vs/editor/contrib/readOnlyMessage/browser/contribution";
import "monaco-editor/esm/vs/editor/contrib/rename/browser/rename";
import "monaco-editor/esm/vs/editor/contrib/semanticTokens/browser/documentSemanticTokens";
import "monaco-editor/esm/vs/editor/contrib/semanticTokens/browser/viewportSemanticTokens";
import "monaco-editor/esm/vs/editor/contrib/smartSelect/browser/smartSelect";
// import "monaco-editor/esm/vs/editor/contrib/snippet/browser/snippetController2";
import "monaco-editor/esm/vs/editor/contrib/stickyScroll/browser/stickyScrollContribution";
import "monaco-editor/esm/vs/editor/contrib/suggest/browser/suggestController";
import "monaco-editor/esm/vs/editor/contrib/suggest/browser/suggestInlineCompletions";
import "monaco-editor/esm/vs/editor/contrib/toggleTabFocusMode/browser/toggleTabFocusMode";
import "monaco-editor/esm/vs/editor/contrib/tokenization/browser/tokenization";
import "monaco-editor/esm/vs/editor/contrib/unicodeHighlighter/browser/unicodeHighlighter";
// import "monaco-editor/esm/vs/editor/contrib/unusualLineTerminators/browser/unusualLineTerminators";
// import "monaco-editor/esm/vs/editor/contrib/wordHighlighter/browser/wordHighlighter";
// import "monaco-editor/esm/vs/editor/contrib/wordOperations/browser/wordOperations";
// import "monaco-editor/esm/vs/editor/contrib/wordPartOperations/browser/wordPartOperations";
import "monaco-editor/esm/vs/editor/standalone/browser/inspectTokens/inspectTokens";
import "monaco-editor/esm/vs/editor/standalone/browser/iPadShowKeyboard/iPadShowKeyboard";
// import "monaco-editor/esm/vs/editor/standalone/browser/quickAccess/standaloneCommandsQuickAccess";
// import "monaco-editor/esm/vs/editor/standalone/browser/quickAccess/standaloneGotoLineQuickAccess";
// import "monaco-editor/esm/vs/editor/standalone/browser/quickAccess/standaloneGotoSymbolQuickAccess";
// import "monaco-editor/esm/vs/editor/standalone/browser/quickAccess/standaloneHelpQuickAccess";
import "monaco-editor/esm/vs/editor/standalone/browser/referenceSearch/standaloneReferenceSearch";
import "monaco-editor/esm/vs/editor/standalone/browser/toggleHighContrast/toggleHighContrast";
