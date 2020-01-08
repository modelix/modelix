import {JSKeyCodes} from "./KeyCodeTranslator";
import {DomUtils} from "./DomUtil";

export interface IAction {
    getMatchingText(): string;
    getDescription(): string;
    execute(): void;
}

export class CCMenu {

    listBox: ListBox = new ListBox(this);
    protected pattern: string = "";
    protected rememberedPos: number = -1;
    private dom: HTMLElement;

    constructor() {
        this.dom = document.createElement("div");
        this.dom.className = "ccmenu";
        this.dom.appendChild(this.listBox.getDom());
    }

    show(hostElement: HTMLElement, x: number, y: number, pattern: string, actions: IAction[]) {
        this.pattern = pattern;

        this.updateActions(this.pattern, actions);

        this.getDom().style.left = x + "px";
        this.getDom().style.top = y + "px";
        this.setVisible(true);
    }

    updateActions(newPattern: string, actions: IAction[]) {
        this.listBox.loadActions(actions);
    }

    getPriority(): number {
        return 100;
    }

    processKeyDown(event: KeyboardEvent): boolean {
        switch (event.keyCode) {
            case JSKeyCodes.KEY_ESCAPE:
                this.setVisible(false);
                break;
            case JSKeyCodes.KEY_UP:
                this.listBox.selectPrevious();
                break;
            case JSKeyCodes.KEY_DOWN:
                this.listBox.selectNext();
                break;
            case JSKeyCodes.KEY_LEFT: {
                // TODO
                break;
            }
            case JSKeyCodes.KEY_RIGHT: {
                // TODO
                break;
            }
            case JSKeyCodes.KEY_ENTER:
                this.executeAction(this.listBox.getSelectedAction());
                break;
            case JSKeyCodes.KEY_BACK_SPACE:
                // TODO
                break;
            case JSKeyCodes.KEY_SPACE:
                if (event.ctrlKey) {
                    // TODO

                    // let selection = interactionManager.getSelection();
                    // if (selection instanceof TextCellSelection) {
                    //     let pos = selection.getStart();
                    //     let newPos = -1;
                    //     if (pos > 0) {
                    //         this.rememberedPos = pos;
                    //         newPos = 0;
                    //     } else if (this.rememberedPos > -1) {
                    //         newPos = this.rememberedPos;
                    //         this.rememberedPos = -1;
                    //     }
                    //     if (newPos !== -1) {
                    //         interactionManager.setSelection(
                    //             new TextCellSelection(selection.getCellReference(), newPos));
                    //         let newSelection = interactionManager.getSelection();
                    //         if (newSelection instanceof TextCellSelection) {
                    //             this.updateActions(newSelection.getTextBeforeCaret());
                    //         }
                    //     }
                    // }
                }
                break;
            default:
                return false;
        }
        return true;
    }

    processKeyUp(e: KeyboardEvent): boolean {
        return false;
    }

    executeAction(action: IAction | undefined): void {
        if (action !== undefined) {
            action.execute();
        }
        this.setVisible(false);
    }

    getPattern(): string {
        return this.pattern;
    }

    isShowing(): boolean {
        return this.getDom().style.display === "block";
    }

    getDom(): HTMLElement {
        return this.dom;
    }

    protected hideMouseHandler: (e: MouseEvent) => void = (e: MouseEvent) => {
        this.setVisible(false);
    }

    setVisible(visible: boolean): void {
        let wasVisible: boolean = this.getDom().style.display === "block";
        this.getDom().style.display = visible ? "block" : "none";

        if (visible !== wasVisible) {
            // const interactionManager = this.getInteractionManager();
            // if (visible) {
            //     interactionManager.addKeyboardHandler(this);
            // } else {
            //     interactionManager.removeKeyboardHandler(this);
            // }
        }
    }
}

export class ListBox {
    private actions: IAction[] = [];
    private selectedIndex: number = 0;
    private dom: HTMLElement = document.createElement("table");
    private actionDoms: HTMLElement[] = [];
    private visibleSelection: HTMLElement | undefined;
    private ccmenu: CCMenu;

    constructor(ccmenu: CCMenu) {
        this.ccmenu = ccmenu;
    }

    updateVisibleSelection(): void {
        let elementToSelect: HTMLElement | undefined = this.selectedIndex < this.actionDoms.length ?
            this.actionDoms[this.selectedIndex] : undefined;
        if (this.visibleSelection === elementToSelect) return;
        if (this.visibleSelection !== undefined) {
            this.visibleSelection.classList.remove("visibleSelection");
        }
        if (elementToSelect !== undefined) {
            elementToSelect.classList.add("visibleSelection");
        }

        this.visibleSelection = elementToSelect;
        if (this.visibleSelection) {
            this.visibleSelection.scrollIntoView({block: "nearest"});
        }
    }

    getLoadedActions(): IAction[] {
        return this.actions;
    }

    loadActions(actions: IAction[]) {
        this.actions = actions;
        this.selectedIndex = 0;

        this.dom.innerHTML = "";
        this.actionDoms = [];

        for (let action of this.actions) {
            let actionDom = this.renderAction(action);
            this.actionDoms.push(actionDom);
            this.dom.appendChild(actionDom);
        }

        this.updateVisibleSelection();
    }

    getDom(): HTMLElement {
        return this.dom;
    }

    getSelectedAction(): IAction | undefined {
        return this.selectedIndex < this.actions.length ? this.actions[this.selectedIndex] : undefined;
    }

    selectNext(): void {
        this.selectedIndex++;
        if (this.selectedIndex >= this.actions.length) this.selectedIndex = 0;
        this.updateVisibleSelection();
    }

    selectPrevious(): void {
        this.selectedIndex--;
        if (this.selectedIndex < 0) this.selectedIndex = Math.max(0, this.actions.length - 1);
        this.updateVisibleSelection();
    }

    renderAction(action: IAction): HTMLElement {
        let dom: HTMLElement = document.createElement("tr");
        dom.style.whiteSpace = "nowrap";

        let matchingTextDom: HTMLElement = document.createElement("td");
        // matchingTextDom.style.padding = "0px 10px 0px 3px";
        matchingTextDom.classList.add("matchingText");
        dom.appendChild(matchingTextDom);
        let matchingText: string | undefined = action.getMatchingText();
        matchingTextDom.innerHTML = matchingText === undefined || matchingText.length === 0 ? "&nbsp;" : matchingText;

        let descriptionDom: HTMLElement = document.createElement("td");
        //descriptionDom.style.padding = "0px 3px 0px 10px";
        descriptionDom.classList.add("description");
        dom.appendChild(descriptionDom);
        let description: string | undefined = action.getDescription();
        descriptionDom.innerHTML = description === undefined || description.length === 0 ? "&nbsp" : description;
        // descriptionDom.style.cssFloat = "right";

        dom.onmousedown = (e) => this.ccmenu.executeAction(action);

        return dom;
    }
}
