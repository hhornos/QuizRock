document.getElementById("registro").style.display = "none";
var submitLogin = false;
function register(){
    document.getElementById("login").style.display = "none";
    document.getElementById("registro").style.display = "block";
}

function finishRegister(){
    document.getElementById("login").style.display = "block";
    document.getElementById("registro").style.display = "none";
}

$("#register").submit(function() {
    if($("#newPassword").val() != $("#newPasswordConfirm").val()){
        alert('campos de senha divergentes');      
        return false;
    }
});

