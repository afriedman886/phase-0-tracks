var body = document.getElementsByTagName("body");
body[0].style.backgroundColor = "blue";

var el = document.createElement("div");
el.innerHTML = "<p>Hello world!</p>";

document.body.appendChild(el);

function addBorder(event) {
  event.target.style.border = "3px solid orange";
}

var listItem = document.getElementById("pizza");
listItem.addEventListener("click", addBorder);

var list = document.getElementById("food");
list.addEventListener("click", addBorder);