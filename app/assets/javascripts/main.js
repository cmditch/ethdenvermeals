function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function getUrlParameter(name) {
    name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
    var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
    var results = regex.exec(location.search);
    return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
};

function setVendorPin(pin) {
    console.log("Setting vendor pin to " + pin)
    docCookies.setItem("vendorPin", pin, null, "/");
}

// function checkForVendorPin() {
//     console.log("Checking for pin")
//     if (getCookie("vendorPin") != "" && getUrlParameter("tokenid") != "") {
//         location.search = ""
//         location.pathname = "/vendor?tokenid=" + getUrlParameter("tokenid") + "&pin=" + getCookie("vendorPin")
//     }
// }
