# Hello Entities

Open the entities sample as explained on the [samples](https://github.com/modelix/modelix/blob/master/doc/samples.md) page.

This sample uses a custom notation for entities designed for the web. To this end, it uses a new notation definition language. It is defined in the `web` aspect of the `org.modelix.samples.entities` language. If you open this aspect, you will find a `Notation` module. Double click to edit. Here is the URL to this node: http://127.0.0.1:63320/node?ref=r%3Ac375c783-4874-43af-8c53-f088cba95e74%28org.modelix.samples.entities.web%29%2F7759120791677832452

## Changing a keyword

The simplest possible change is modifying the keyword of an `Entity`. Currently it is "entity", change it to something else. Rebuild the language by pressing `Ctrl-F9`, move over to the browser and reload the entities page. The keyword should change. This is the fundamental turnaround of modifying languages.

## Adding a `public` flag

A possible extension of the entities language is to be able to mark properties as `public`, optionally. If you look in the notation definition at the initializer of the `Property`, then you will see that the notation language includes many ideas from the grammar cells extension for MPS. It also has direct support for flags where a particular keyword is shown if the flag is true and nothing otherwise. 

To add the `public` flag, first go to the `Structure` aspect of the language at at a Boolean `public` property to the concept `Property`. Notice that this is of course the normal MPS structure aspect, modelix does not change that. You can now go back to the notation, press `Shift-Enter` on the name of the property, press `control-space`, select the `flag` cell, and finally select the `public` property:

`notation Property : [ flag/public name : type ? [ = initializer ] ]`

Rebuilding the language and reloading the page will make the flag available to the end-user.

## The Stuff around the editor

If you play with the samples and tutorial, you will see various HTML pages "around" the core node editor. These pages are obviously also served by the web server that runs in MPS (`localhost:3333`). The pages are created through incremental transformations based on the Shadow Models framework. If you check out the `web` aspect of the `org.modelix.samples.entities` you can see two more relevant constructs.

The `HttpPage` roots effectively define http endpoints. It defines a URL incl. parameters, a page title as well as the HTML page that is shown; that page is created via a transformation.

```
http page /entities/model?model=... { 
  path: /entities/model     
  parameters: model : node<Model>        
  title: "Entities (" + model.name + ")"                      
  transformation: call EntitiesWebPages.entitiesPage model                             
}
```

This transformation is located in `EntitiesWebPages`, an root that contains shadow model transformations. It builds the AST of a HTML page using concepts (defined as part of the modelix project) that represent HTML. Ultimately this HTML embeds the actual editor for an MPS node (`call pages.nodeEditor _ `). How this then exactly works will be explained later.
