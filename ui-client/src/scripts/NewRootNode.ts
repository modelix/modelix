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

import $ = require("jquery");

export function addNewRootNode(modelRef: string, callback: (nodeRef: string) => void) {
    $.ajax({
        type: "GET",
        url: "rootConcepts?modelRef=" + modelRef,
        cache: false,
        async: true,
        success: response => {
            try {
                const conceptList: ConceptDescriptor[] = response;
                const dialog = document.createElement("dialog");
                dialog.classList.add("new-root-node-dialog");

                const title = document.createElement("div");
                title.classList.add("title");
                dialog.append(title);

                const titleText = document.createElement("span");
                titleText.innerText = "Add New Root Node";
                title.append(titleText);

                const closeButton = document.createElement("img");
                closeButton.onmouseover = () => closeButton.src = "icons/AllIcons/Actions/CloseHovered";
                closeButton.onmouseout = () => closeButton.src = "icons/AllIcons/Actions/Close";
                // @ts-ignore
                closeButton.onclick = () => dialog.close();
                closeButton.src = "icons/AllIcons/Actions/Close";
                closeButton.classList.add("close-button");
                title.append(closeButton);

                const rows = document.createElement("div");
                rows.classList.add("entries");
                dialog.append(rows);

                for (let conceptDescriptor of conceptList) {
                    const row = document.createElement("div");
                    row.classList.add("entry");
                    row.onclick = (event) => {
                        $.ajax({
                            type: "POST",
                            url: "addRootNode?modelRef=" + modelRef + "&conceptId=" + conceptDescriptor.id,
                            async: true,
                            success: response => {
                                // @ts-ignore
                                dialog.close();
                                callback(response);
                            }
                        })
                    };

                    let imgIcon = document.createElement("img");
                    imgIcon.src = "icons/" + conceptDescriptor.languageName + "." + conceptDescriptor.name;
                    row.append(imgIcon);

                    const spanConceptName = document.createElement("span");
                    spanConceptName.innerText = conceptDescriptor.name;
                    row.append(spanConceptName);

                    // const spanLanguageName = document.createElement("span");
                    // spanLanguageName.innerText = conceptDescriptor.languageName;
                    // row.append(spanLanguageName);

                    rows.appendChild(row)
                }

                document.body.append(dialog);
                // @ts-ignore
                dialog.showModal();
            } catch (error) {
                console.log(error);
            }
        }
    });
}

interface ConceptDescriptor {
    id: string;
    name: string;
    languageName: string;
}