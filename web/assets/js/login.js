//document.getElementById("registro").style.display = "none";
var submitLogin = false;
function register() {
    document.getElementById("login").style.display = "none";
    document.getElementById("registro").style.display = "block";
}

function finishRegister() {
    if ($("#newPassword").val() !== $("#newPasswordConfirm").val()) {
        alert('Campos de senha divergentes!');
        document.getElementById("newPassword").value="";
        document.getElementById("newPasswordConfirm").value="";
        return false;
    } else {
        alert('Cadastro efetuado com sucesso!');
        document.getElementById("login").style.display = "block";
        document.getElementById("registro").style.display = "none";
        document.getElementById('register').submit();
        return true;
    }
}

function cancelRegister(){
    document.getElementById("login").style.display = "block";
    document.getElementById("registro").style.display = "none";
}


