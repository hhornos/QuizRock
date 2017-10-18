<%-- 
    Document   : login
    Created on : 15/10/2017, 10:04:35
    Author     : rodri
--%>


<%@page import="javax.management.RuntimeErrorException"%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function returnHome() {
                var url = window.location.href;
                url = url.split("/");
                var newUrl = "";
                for (var i = 0; i < (url.length - 1); i++) {
                    newUrl += url[i] + "/";
                }
                window.location.href = newUrl;
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Acervo de Conhecimento do Classic Rock - QUIZ CLASSIC ROCK">
        <meta name="author" content="Equipe Fatec">

        <title>Quiz Classic Rock</title>

        <!-- Bootstrap core CSS -->
        <link href='./assets/vendor/bootstrap/css/bootstrap.min.css' rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->
        <link href="./assets/css/business-casual.css" rel="stylesheet">

        <script src='./assets/vendor/jquery/jquery.min.js' type="text/javascript"  ></script>
        <script src="assets/js/login.js" defer="defer"></script>
        
        <style>
            .box {
                margin-left: 35%;
                margin-right: 35%;
                width: 30%;
                height: auto;
                border-radius: 5px;
                padding: 10px;
            }

            .col-lg-3{
                padding-right: 0;
            }
            .col-lg-3 label{
                float: right;
                text-align: right;
            }
            .row{
                margin-bottom: 8px;
            }

            .btnLogin,.btnCancel{
                width: 80px;
                margin-top: 5px;
                margin-left: 30px;
            }

            #registro .btnLogin,.btnCancel{
                width: 100px;
                margin-top: 5px;
                margin-left: 30px;
            }

            .btnRegister{
                margin-top: 16px;
                float: left;
                text-align: left;
            }
        </style>
    </head>
    <body style="margin-top: 150px">

        <%
            Bd bd = new Bd();
            boolean isError = false;
            try {
                if (request.getParameter("login") != null) {
                    Usuario user = new Usuario(request.getParameter("userName"), request.getParameter("password"));
                    if (bd.login(user.getLogin(), user.getSenha())) {
                        HttpSession sessao = request.getSession(true);
                        sessao.setAttribute("userName", user.getLogin());
                        sessao.setAttribute("password", user.getSenha());
                        response.sendRedirect("../WebQuiz");
                    } else {
                        isError = true;
                    }
                }
                if (request.getParameter("register") != null) {
                    if (request.getParameter("newPassword").equals(request.getParameter("newPasswordConfirm"))) {
                        Usuario user = new Usuario(request.getParameter("newUserName"), request.getParameter("newPassword"));
                        bd.addUsuario(user);
                    }
                }
            } catch (Exception e) {
        %><script type="text/javascript">
            alert("Ocorreu um erro interno, tente novamente ou contate um administrador.");
        </script><%
            }
        %>
        <%@include file="WEB-INF/header.jspf" %>
        <div class="container">
            <div class="">
                <div class="box bg-faded" id="login" > 
                    <fieldset>
                        <legend>LOGIN</legend>
                        <form action="" id="loginForm" method="POST">
                            <% if (isError) { %>    
                            <div class="alert alert-danger">
                                <strong>Erro!</strong> Nome de usuário ou senha inválidos.
                            </div>
                            <%}%>

                            <div class="row">
                                <div class="col-lg-3">
                                    <label>Usuário:</label>
                                </div>
                                <div class="col-lg-9">
                                    <input type="text" name="userName" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3">
                                    <label>Senha:</label>
                                </div>
                                <div class="col-lg-9">
                                    <input type="password" name="password" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <input class="btnLogin" type="submit" name="login" value="Entrar" >
                                </div>
                                <div class="col-lg-6">
                                    <input class="btnCancel" type="button" value="Cancelar" onclick="returnHome()" style="display: inline">
                                </div>
                            </div>
                        </form>
                        <button class="btnRegister" onclick="register()" style="display: inline;">Registrar-se</button>
                    </fieldset>
                </div>
                            
                <div id="registro" class="box bg-faded" style="display: none;">
                    <fieldset>
                        <legend>NOVO USUÁRIO</legend>
                        <form action="" id="loginForm" method="POST">
                            <div class="row">
                                <div class="col-lg-3">
                                    <label>Usuário</label>
                                </div>
                                <div class="col-lg-9">
                                    <input type="text" name="newUserName"  required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3">
                                    <label>Senha</label>
                                </div>
                                <div class="col-lg-9">
                                    <input type="password" name="newPassword" id="newPassword" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3">
                                     <label>Confirmar Senha</label>
                                </div>
                                <div class="col-lg-9">
                                    <input type="password" name="newPasswordConfirm" id="newPasswordConfirm" required style="margin-top: 8px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <input class="btnLogin" type="submit" name="register" onclick="return finishRegister();" value="Cadastrar">
                                </div>
                                <div class="col-lg-6">
                                    <input class="btnCancel" type="button" value="Cancelar" onclick="cancelRegister()" style="display: inline">
                                </div>
                            </div>
                        </form>
                    </fieldset>
                </div>

<!--                <div id="registro" style="display: none;">
                    <fieldset>
                        <legend>Novo Usuário</legend>
                        <form method="POST" id="register">
                            <label>Usuário</label>
                            <input type="text" name="newUserName"  required />
                            </br>
                            <label>Senha</label>
                            <input type="password" name="newPassword" id="newPassword" required />
                            </br>
                            <label>Confirmar Senha</label>
                            <input type="password" name="newPasswordConfirm" id="newPasswordConfirm" required />
                            </br>
                            </br>
                            <input type="submit" name="register" onclick="return finishRegister();" value="Cadastrar">
                        </form>
                    </fieldset>
                </div>-->
            </div>
        </div>
        <%@include file="WEB-INF/footer.jspf" %>
    </body>
</html>
