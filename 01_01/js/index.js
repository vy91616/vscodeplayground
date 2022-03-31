let btnCreate = document.getElementById("create");

btnCreate.addEventListener(
  "mouseover",
  function (event) {
    event.target.style.backgroundColor = "#797720";
  },
  false
);

btnCreate.addEventListener(
  "mouseout",
  function (event) {
    event.target.style.backgroundColor = "";
  },
  false
);

let btnShow = document.getElementById("pwToggle");

btnShow.addEventListener(
  "click",
  function (event) {
    if (event.target.checked) {
      btnPassword.setAttribute("type", "text");
    } else {
      btnPassword.setAttribute("type", "password");
    }
  },
  false
);

let btnPassword = document.getElementById("password");
