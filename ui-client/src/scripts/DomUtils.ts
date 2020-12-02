
export namespace DomUtils {
    export function isInDocument(node: Node): boolean {
        return node === document || node.parentNode && isInDocument(node.parentNode);
    }

    export function setChildren(parent: HTMLElement, newChildren: HTMLElement[], ignore: (element: Element) => boolean = () => false): void {
        let oldChildren = parent.children;
        let removed = 0;
        let i = 0; // current children
        let j = 0; // new children
        while (i < oldChildren.length + removed) {
            let oldChild = oldChildren[i - removed];
            let newChild = newChildren[j];
            if (oldChild !== newChild) {
                if (ignore(oldChild)) {
                    i++; // but keep j
                } else {
                    if (j < newChildren.length) {
                        if (newChild.parentElement === parent) {
                            parent.replaceChild(document.createElement("div"), newChild);
                        }
                        parent.replaceChild(newChild, oldChild);
                        i++;
                        j++;
                    } else {
                        parent.removeChild(oldChild);
                        removed++;
                        i++;
                    }
                }
            } else {
                i++;
                j++;
            }
        }
        while (j < newChildren.length) {
            parent.appendChild(newChildren[j]);
            j++;
        }
    }

    export function absoluteBounds(element) {
        const bodyRect = document.body.getBoundingClientRect();
        const elemRect = element.getBoundingClientRect();
        let x = elemRect.left - bodyRect.left;
        let y = elemRect.top - bodyRect.top;
        return {
            x: x,
            y: y,
            left: x,
            top: y,
            right: x + elemRect.width,
            bottom: y + elemRect.height,
            width: elemRect.width,
            height: elemRect.height
        };
    }
}
