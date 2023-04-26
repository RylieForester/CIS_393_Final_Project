//The below code for the form validation was created using the material in Chapter 8.7 Form Validation of the course zyBook.
window.addEventListener("DOMContentLoaded", domLoaded);

function domLoaded() {
   let button = document.getElementById("validateButton");
   button.addEventListener("click", validateUserInput);

   let userInputID = document.getElementById("deletedUserID");
}

//Function checks whether the input user ID is a valid number.
function validateUserInput(event){
    let userInputID = document.getElementById("deletedUserID");
    let button = document.getElementById("okButton");

    button.style.opacity = "0%";

    if(isNaN(userInputID.value) || (userInputID.value === "") || (userInputID.value % 1 !== 0) || (userInputID.value <= 0)){
        userInputID.style.backgroundColor = "rgba(255, 0, 0, 0.498)";
    }
    else if(!(isNaN(userInputID.value)) || (userInputID.value !== "") || (userInputID.value % 1 === 0) || (userInputID.value > 0)) {
        userInputID.style.backgroundColor = "lightgreen";
        button.style.opacity = "100%";
    }
     
}