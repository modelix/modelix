/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.workspace.build

import org.w3c.dom.Document
import org.w3c.dom.Element
import org.w3c.dom.Node
import java.io.File
import java.io.InputStream
import java.io.StringWriter
import javax.xml.XMLConstants
import javax.xml.parsers.DocumentBuilderFactory
import javax.xml.transform.OutputKeys
import javax.xml.transform.Transformer
import javax.xml.transform.TransformerFactory
import javax.xml.transform.dom.DOMSource
import javax.xml.transform.stream.StreamResult

fun Node.visitAll(visitor: (Node)->Unit) {
    visitor(this)
    val childNodes = this.childNodes
    for (i in 0 until childNodes.length) childNodes.item(i).visitAll(visitor)
}

fun Node.parentTagName(): String? {
    if (this !is Element) return null
    val parentNode = this.parentNode
    if (parentNode !is Element) return null
    return parentNode.tagName
}

fun Node.tagName(): String? {
    return if (this is Element) this.tagName else null
}

fun Node.findTag(tagName: String): Element? = children().filterIsInstance<Element>().find { it.tagName() == tagName }

fun Node.children(): List<Node> {
    val children = childNodes
    val result = ArrayList<Node>(children.length)
    for (i in 0 until children.length) result += children.item(i)
    return result
}

fun Node.childElements(): List<Element> = children().filterIsInstance<Element>()

fun Element.newChild(tag: String, body: Element.()->Unit): Element {
    val child = ownerDocument.createElement(tag)
    appendChild(child)
    child.apply(body)
    return child
}

fun xmlToString(doc: Document): String {
    val transformerFactory: TransformerFactory = TransformerFactory.newInstance()
    val transformer: Transformer = transformerFactory.newTransformer()
    transformer.setOutputProperty(OutputKeys.INDENT, "yes")
    val source = DOMSource(doc)
    val out = StringWriter()
    val result = StreamResult(out)
    transformer.transform(source, result)
    return out.toString()
}

fun readXmlFile(file: File): Document {
    val dbf = DocumentBuilderFactory.newInstance()
    //dbf.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true)
    val db = dbf.newDocumentBuilder()
    return db.parse(file)
}

fun readXmlFile(file: InputStream): Document {
    val dbf = DocumentBuilderFactory.newInstance()
    dbf.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true)
    val db = dbf.newDocumentBuilder()
    return db.parse(file)
}