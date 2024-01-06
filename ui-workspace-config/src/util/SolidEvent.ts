import { Accessor, Setter, createSignal } from "solid-js";

/**
 * Semantic wrapper for Solids signal, that is intended to be used in context stores
 */
export class SolidEvent<T> {
  onUpdate: Accessor<T>;

  #setSignal: Setter<T>;

  constructor(initalValue: T) {
    [this.onUpdate, this.#setSignal] = createSignal<T>(initalValue);
  }

  update(value: T): void {
    this.#setSignal(() => value);
  }
}
