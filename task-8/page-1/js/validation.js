var message = ""

check_validity = function() {
    if(!(document.getElementById("email").validity.valid)) {
        message = "Please Enter Proper Email"
        return false
    }
    if(!(document.getElementById("phone-number").validity.valid)) {
        message =  "Please Enter Proper Number"
        console.log(document.getElementById("phone-number").validity.valid)
        return false
    }
    if((document.getElementById("name").value == "")) {
        message = "Please  Enter The Name"
        return false
    }
    if((document.getElementById("home-address").value == "")) {
        message = "Please Enter Address"
        return false
    }
    return true
}