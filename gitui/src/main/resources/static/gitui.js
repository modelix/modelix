
let lastCheckedBranch = null;
function branchCheckboxClick(checkbox, branchName, commitHash) {
    if (checkbox.checked) {
        let checkedCheckboxes = getCheckedBranchCheckboxes()
        if (checkedCheckboxes.length > 2) {
            for (let checkedCheckbox of checkedCheckboxes) {
                if (lastCheckedBranch !== null && lastCheckedBranch[0] === checkedCheckbox) continue;
                if (checkedCheckbox === checkbox) continue;
                checkedCheckbox.checked = false;
            }
        }
        lastCheckedBranch = [checkbox, branchName, commitHash];
    }

    document.getElementById("showDiffButton").disabled = getCheckedBranchCheckboxes().length < 2
}

function getCheckedBranchCheckboxes() {
    let checkboxes = Array.from(document.getElementsByClassName("branchCheckbox"));
    return checkboxes.filter(e => e.checked);
}

function openBranchDiff() {
    let checkboxes = getCheckedBranchCheckboxes();
    if (checkboxes.length < 2) return;
    let commitHashes = checkboxes.map(e => e.value);
    window.open("diff/" + commitHashes[0] + "/" + commitHashes[1] + "/", "_blank");
}
