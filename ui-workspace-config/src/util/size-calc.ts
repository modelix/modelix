export function getEmSizeInPx(el: HTMLElement): number {
  const sizeProp = getComputedStyle(el, "").fontSize.match(/(\d+)px/);
  return Number(sizeProp![1]);
}
