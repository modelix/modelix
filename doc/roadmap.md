
# Roadmap

Here are some open topics that we may work on in the future. The order doesn't have any meaning.

- CI integration
    - Gradle plugin for downloading models from the model server
- Code review tool based on Modelix
    - Git integration: Allow to specify a repository and a branch/version that is then loaded into an MPS instance running in kubernetes
- Collaborative editing in MPS
    - Show list of active users working on the same model
    - Show cursors/selection of other users
- Editor
    - Graphical notation: The current text based notation only uses very little code in the browser. All user input is processed on the server and they client receives an update of the changed HTML elements. A graphical notation based on existing JavaScript libraries would require a different API provided by the server.
