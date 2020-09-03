# Default Repository

If you [run Modelix](https://github.com/modelix/modelix/wiki/Running-Modelix) and point your browser to http://localhost:33333/ you will see a list of all modules in the current MPS repo (not in the model server database). You can then click through to a particular node, for example
- module `de.itemis.mps.editor.collapsible`
- model `de.itemis.mps.editor.collapsible.structure`
- node `CellModel_Collapsible`
- the ultimate URL is http://localhost:33333/nodeAsHtml?nodeRef=MOcBcjpiY2EzOTkzYS0yZGM0LTQ0NDktYTY1NC1jOWYyZmE4NmRjOWMoZGUuaXRlbWlzLm1wcy5lZGl0b3IuY29sbGFwc2libGUuc3RydWN0dXJlKS80NzY3NjE1NDM1ODA3NzM3MzUw

You will then see the SVG-based editor that "transfers" the MPS default editor to the browser. This is the current default behavior or modelix if you do not define a custom editor. It is readonly, because the model is readonly in MPS. If you navigate to a node that is "in the project", such as `org.modelix.model.runtimelang/org.modelix.model.runtimelang.structure/UsedModule`, you will be able to edit the code in the SVG-based editor. If you navigate to the same node in MPS natively you will see the change you made in the browser.


http://localhost:33333/nodeAsHtml?nodeRef=MOQBcjpmMWNjOTZmZS1kNmVmLTRhNTgtYjYwNy0xYjJlNGQwMmUxZGUob3JnLm1vZGVsaXgubW9kZWwucnVudGltZWxhbmcuc3RydWN0dXJlKS81Mjc2NzU1MjQ1OTQzNDM0OTc4

# Entities Sample

This sample showcases the situation where you define a custom editor for your language.

- open the `org.modelix` project in the `mps` folder of the repo to make sure the web server runs
- and also start the database and the model server (see [Running Modelix](https://github.com/modelix/modelix/wiki/Running-Modelix))
- open the project in the `samples/entities` folder in a second MPS window
- point your browser here: http://localhost:33333/entities
- click on one of the entities to see the custom textual editor for all entity nodes in your MPS workspace
