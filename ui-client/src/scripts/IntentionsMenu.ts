import $ = require("jquery");

export interface IIntention {
    getText(): string;
}

export class IntentionsMenu {
    private dom: HTMLElement;
    private entriesContainer: HTMLElement | undefined;
    private entries: IntentionsMenuEntry[] = [];

    constructor() {
        this.initDom();
    }

    protected initDom(): void {
        this.dom = document.createElement("div");
        this.dom.classList.add("intentionsMenu");

        let title = document.createElement("div");
        title.innerText = "Intentions";
        title.classList.add("title");
        this.dom.appendChild(title);

        this.entriesContainer = document.createElement("div");
        this.entriesContainer.classList.add("entries");
        this.dom.appendChild(this.entriesContainer);
    }

    getDom(): HTMLElement {
        return this.dom;
    }

    loadIntentions(intentions: IIntention[]): void {
        this.entries = [];
        $(this.entriesContainer).empty();
        for (let i = 0; i < intentions.length; i++) {
            let entry = new IntentionsMenuEntry(i, intentions[i]);
            if (i === 0) entry.setSelected(true);
            this.entries.push(entry);
            this.entriesContainer.appendChild(entry.getDom());
        }
    }

    setVisible(visible: boolean): void {
        this.dom.style.visibility = visible ? "visible" : "hidden";
    }

    isVisible(): boolean {
        return this.dom.style.visibility !== "hidden";
    }

    setPosition(x: number, y: number): void {
        this.dom.style.left = x + "px";
        this.dom.style.top = y + "px";
    }

    setSelectedIndex(index: number): void {
        for (let entry of this.entries) {
            entry.setSelected(false);
        }
        if (0 <= index && index < this.entries.length) {
            this.entries[index].setSelected(true);
        } else if (this.entries.length > 0) {
            this.entries[0].setSelected(true);
        }
    }

    getSelectedIndex(): number {
        let i = 0;
        for (let entry of this.entries) {
            if (entry.isSelected()) {
                return i;
            }
            i++;
        }
        return 0;
    }

    getSelectedEntry(): IntentionsMenuEntry | undefined {
        for (let entry of this.entries) {
            if (entry.isSelected()) {
                return entry;
            }
        }
        return undefined;
    }
}

export class IntentionsMenuEntry {
    private selected: boolean = false;
    private dom: HTMLElement;

    constructor(public readonly index: number, public readonly intention: IIntention) {
        this.index = index;
        this.intention = intention;
        this.dom = document.createElement("div");
        this.dom.classList.add("entry");
        this.updateDom();
    }

    getDom(): HTMLElement {
        return this.dom;
    }

    updateDom(): void {
        this.dom.innerText = this.intention.getText().split(" ").join("\u00a0");
        this.dom.style.backgroundColor = this.selected ? "#1055d1" : null;
        this.dom.style.color = this.selected ? "white" : null;
    }

    setSelected(selected: boolean): void {
        if (selected === this.selected) return;
        this.selected = selected;
        this.updateDom();
    }

    isSelected(): boolean {
        return this.selected;
    }

    getIntention(): IIntention {
        return this.intention;
    }
}
