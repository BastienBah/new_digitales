// Function to generate an array w/ alphabet letters
function genCharArray(charA, charZ) {
  var a = [], i = charA.charCodeAt(0), j = charZ.charCodeAt(0);
  for (; i <= j; ++i) {
    a.push(String.fromCharCode(i));
  }
  return a;
}
// Function to parse URL and get last element
function parseURL(url) {
  var array = url.split('/');
  var lastsegment = array[array.length-1];
  return lastsegment;
}
// Function to set alphabet array in great HTML format
function layoutCharArray() {
  var alphabet = genCharArray('a', 'z');
  var element = document.getElementById("alphabet");
  var current_path = parseURL(window.location.href);

  if (current_path == "indefinitions") {
    var path = "indefinitions?letter=";
  } else {
    var path = "indefinitions?letter=";
  }

  for (i = 0; i < alphabet.length; i++) {
    if(current_path == alphabet[i]){
      nameList = "<li class='active'>" + "<a href='" + path + alphabet[i] + "'>" + alphabet[i] + "</a>" + "</li>";
    } else {
      nameList = "<li>" + "<a href='" + path + alphabet[i] + "'>" + alphabet[i] + "</a>" + "</li>";
    }
    element.innerHTML += nameList;
  }
}
// Function to display alphabet array in big format (for arrows)
function bigCharArray(key) {
  var alphabet = genCharArray('a', 'z');
  var element = document.getElementById("big-alphabet");
  var blur = document.getElementById("big-navigate");
  blur.className = "visible";
  var current_path = parseURL(window.location.href);

  if (key > 64 && key < 91) {
    // Set key to 0 because a is 65
    key = key - 65;
  } else if (key == 37) {
    key = current_path.charCodeAt(0) - 98;
  } else if (key == 39) {
    key = current_path.charCodeAt(0) - 96;
  }

  for (i = (key-2); i < (key+3); i++) {
    if (alphabet[i] == null) {
      element.innerHTML += "&nbsp;";
    } else if (i == key) {
      element.innerHTML += ("<strong>" + alphabet[i] + "</strong>");
    } else {
      element.innerHTML += alphabet[i];
    }
  }

  setTimeout(function() { window.location.href = '/wikis/letter/' + alphabet[key]; }, 1500);
}
// Launch function if element 'alphabet' exists
if (document.getElementById("alphabet")){
  layoutCharArray();
  // Detect keypressed
  document.onkeydown = function(evt) {
    evt = evt || window.event;
    if (evt.keyCode > 64 && evt.keyCode < 91 || evt.keyCode == 37 || evt.keyCode == 39) {
      bigCharArray(evt.keyCode);
    }
  };
}
