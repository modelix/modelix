export function getWebsocketUrl() {
    let path = window.location.pathname;
    path = path.substring(0, path.lastIndexOf("/"));
    let url = "ws://" + window.location.host + path;

    for (let tag of document.getElementsByTagName("base")) {
        if (tag.href != "") {
            url = tag.href;
            if (url.toLowerCase().startsWith("http")) {
                // changes http to ws and https to wss
                url = "ws" + url.substring(4, url.length);
            }
            if (url.charAt(url.length - 1) == "/") {
                url = url.substring(0, url.length - 1);
            }
        }
    }
    url += "/ws/";
    return url;
}