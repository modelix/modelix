
function getCheckedBranchRadioButtons() {
    let checkboxes = Array.from(document.getElementsByClassName("branchRadio"));
    return checkboxes.filter(e => e.checked);
}

function openBranchDiff(mpsInstanceUrl) {
    let radioButtons = getCheckedBranchRadioButtons();
    let leftHashes = radioButtons.filter(e => e.name === "left").map(e => e.value);
    let rightHashes = radioButtons.filter(e => e.name === "right").map(e => e.value);
    if (leftHashes.length === 0 || rightHashes.length === 0) {
        alert("Choose a left and right side for the diff first.");
        return;
    }
    if (mpsInstanceUrl === null || mpsInstanceUrl === undefined) mpsInstanceUrl = "";
    if (!mpsInstanceUrl.endsWith("/")) mpsInstanceUrl += "/";
    window.open(mpsInstanceUrl + "diff/" + leftHashes[0] + "/" + rightHashes[0] + "/", "_blank");
}
