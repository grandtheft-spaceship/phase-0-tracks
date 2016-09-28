var photo = document.getElementsByTagName("img");
photo = photo[0];

photo.style.width = "75%";

function hideGif() {
  event.target.hidden = true;
}

function changeColor() {
  event.target.style.color = "red";
}

function originalColor() {
  event.target.style.color = "black";
}


var photo = document.getElementsByTagName("img");
photo = photo[0];
photo.addEventListener("click", hideGif);

var header = document.getElementsByTagName("h1");
header = header[0];
header.addEventListener("click", changeColor);
header.addEventListener("dblclick", originalColor);
