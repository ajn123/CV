function getCookie(name) {
  var dc = document.cookie;
  var prefix = name + "=";
  var begin = dc.indexOf("; " + prefix);
  if (begin == -1) {
    begin = dc.indexOf(prefix);
    if (begin != 0) return null;
  } else
    begin += 2;
  var end = document.cookie.indexOf(";", begin);
  if (end == -1)
    end = dc.length;
  return unescape(dc.substring(begin + prefix.length, end));
}

function processMyVTContent() {
	if ((getCookie("myvt-frame") == "yes") && (parent != window)) {
		var myVTContent = document.getElementsByTagName("div");
		
		for (var i = 0; i < myVTContent.length; i++) {
			if (myVTContent[i].className == "myvt-hidden-content") {
				myVTContent[i].style.display = "none";
			} else if (myVTContent[i].className == "myvt-shown-content") {
				myVTContent[i].style.display = "block";
			}
		}
	}
}