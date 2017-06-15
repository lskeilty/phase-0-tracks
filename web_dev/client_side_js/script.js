console.log("The Script is running");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("sun-clipart");
photo.addEventListener("click", addPinkBorder);