//The below code for the form validation was created using the material in Chapter 8.7 Form Validation of the course zyBook.
window.addEventListener("DOMContentLoaded", domLoaded);

function domLoaded() {
   let button = document.getElementById("validateButton");
   button.addEventListener("click", validateUserInput);

   let userInputID = document.getElementById("wishlistUserID");
   let userInputBook = document.getElementById("wishlistBookTitle");
}

//Function checks whether the input user ID is a valid number and the input Book Title is a valid string. 
function validateUserInput(event){
    let userInputID = document.getElementById("wishlistUserID");
    let userInputBook = document.getElementById("wishlistBookTitle");
    let button = document.getElementById("okButton");

    button.style.opacity = "0%";

    if(isNaN(userInputID.value) || (userInputID.value === "") || (userInputID.value % 1 !== 0) || (userInputID.value <= 0)){
        userInputID.style.backgroundColor = "rgba(255, 0, 0, 0.498)";
    }
    else if(!(isNaN(userInputID.value)) || (userInputID.value !== "") || (userInputID.value % 1 === 0) || (userInputID.value > 0)) {
        userInputID.style.backgroundColor = "lightgreen";
    }

    if(!(isNaN(userInputBook.value)) || (userInputBook.value === "")){
        userInputBook.style.backgroundColor = "rgba(255, 0, 0, 0.498)";
    }
    else if(isNaN(userInputBook.value) || (userInputBook.value !== "")) {
        userInputBook.style.backgroundColor = "lightgreen";
    }

    let userInputIDBackgroundColor = userInputID.style.backgroundColor;
    let userInputBookBackgroundColor = userInputBook.style.backgroundColor;

    if((userInputIDBackgroundColor === userInputBookBackgroundColor)){
        if((userInputIDBackgroundColor === "lightgreen") && (userInputBookBackgroundColor === "lightgreen")){
            button.style.opacity = "100%";
        }
    }
    else{
        button.style.opacity = "0%";
    }
     
}