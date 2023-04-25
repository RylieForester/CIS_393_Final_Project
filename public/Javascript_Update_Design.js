 //The below code for the form validation was created using the material in Chapter 8.7 Form Validation of the course zyBook.
 window.addEventListener("DOMContentLoaded", domLoaded);

 function domLoaded() {
    let button = document.getElementById("validateButton");
    button.addEventListener("click", validateUserName);
 
    let userInputID = document.getElementById("updatedUserID");
    let userInputFirstName = document.getElementById("updatedUserFirstName");
    let userInputLastName = document.getElementById("updatedUserLastName");
 }
 
  //Function checks whether the input user name is a valid string. 
  function validateUserName(event){
     let userInputID = document.getElementById("updatedUserID");
     let userInputFirstName = document.getElementById("updatedUserFirstName");
     let userInputLastName = document.getElementById("updatedUserLastName");
     let button = document.getElementById("okButton");
 
     button.style.opacity = "0%";

     if(isNaN(userInputID.value) || (userInputID.value === "") || (userInputID.value % 1 !== 0) || (userInputID.value <= 0)){
        userInputID.style.backgroundColor = "rgba(255, 0, 0, 0.498)";
    }
    else if(!(isNaN(userInputID.value)) || (userInputID.value !== "") || (userInputID.value % 1 === 0) || (userInputID.value > 0)) {
        userInputID.style.backgroundColor = "lightgreen";
    }
 
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
 
     let userInputIDBackgroundColor = userInputID.style.backgroundColor;
     let userInputFirstBackgroundColor = userInputFirstName.style.backgroundColor;
     let userInputLastBackgroundColor = userInputLastName.style.backgroundColor;
 
     if((userInputIDBackgroundColor === "lightgreen") && (userInputFirstBackgroundColor === "lightgreen") && (userInputLastBackgroundColor === "lightgreen")){
         button.style.opacity = "100%";
     }
     else{
         button.style.opacity = "0%";
     }
 }