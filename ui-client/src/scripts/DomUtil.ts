
export namespace DomUtils {
    export function isInDocument(node: Node): boolean {
        return node === document || node.parentNode && isInDocument(node.parentNode);
    }
}
