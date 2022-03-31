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

let checkboxShow = document.getElementById("pwToggle");

let txtPassword = document.getElementById("password");

checkboxShow.addEventListener(
  "click",
  function (event) {
    if (event.target.checked) {
      txtPassword.setAttribute("type", "text");
    } else {
      txtPassword.setAttribute("type", "password");
    }
  },
  false
);

let form = document.getElementsByTagName("form");

let checkboxTermOfUse = document.getElementById("termOfUse");

form[0].addEventListener(
  "submit",
  function (event) {
    let passwordStr = txtPassword.value;
    let regStr = /^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&? "]).*$/;
    if (regStr.test(passwordStr) && checkboxTermOfUse.checked) {
      alert("Congrats! you have created an account!");
    } else if (checkboxTermOfUse.checked) {
      alert("Invalid Password!");
      event.preventDefault();
    } else {
      alert("Please read and check the term of use and Privacy policy!");
      event.preventDefault();
    }
  },
  false
);
