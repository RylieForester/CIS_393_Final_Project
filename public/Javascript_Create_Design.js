 //The below code for the form validation was created using the material in Chapter 8.7 Form Validation of the course zyBook.
window.addEventListener("DOMContentLoaded", domLoaded);

function domLoaded() {
   let button = document.getElementById("validateButton");
   button.addEventListener("click", validateUserName);

   let userInputFirstName = document.getElementById("wishlistUserName");
   let userInputLastName = document.getElementById("wishlistUserLastName");
}

 //Function checks whether the input user name is a valid string. 
 function validateUserName(event){
    let userInputFirstName = document.getElementById("wishlistUserFirstName");
    let userInputLastName = document.getElementById("wishlistUserLastName");
    let button = document.getElementById("okButton");

    button.style.opacity = "0%";

    if(!(isNaN(userInputFirstName.value)) || (userInputFirstName.value === "")){
        userInputFirstName.style.backgroundColor = "rgba(255, 0, 0, 0.498)";
    }
    else if(isNaN(userInputFirstName.value) || (userInputFirstName.value !== "")) {
        userInputFirstName.style.backgroundColor = "lightgreen";
    }  

    if(!(isNaN(userInputLastName.value)) || (userInputLastName.value === "")){
        userInputLastName.style.backgroundColor = "rgba(255, 0, 0, 0.498)";
    }
    else if(isNaN(userInputLastName.value) || (userInputLastName.value !== "")) {
        userInputLastName.style.backgroundColor = "lightgreen";
    }  

    let userInputFirstBackgroundColor = userInputFirstName.style.backgroundColor;
    let userInputLastBackgroundColor = userInputLastName.style.backgroundColor;

    if((userInputFirstBackgroundColor === userInputLastBackgroundColor)){
        if((userInputFirstBackgroundColor === "lightgreen") && (userInputLastBackgroundColor === "lightgreen")){
            button.style.opacity = "100%";
        }
    }
    else{
        button.style.opacity = "0%";
    }
}