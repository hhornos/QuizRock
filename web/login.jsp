<%-- 
    Document   : login
    Created on : 15/10/2017, 10:04:35
    Author     : rodri
--%>


<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript">
            function redirectLogin(){
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
        <meta name="description" content="Acervo de Conhecimento do Classic Rock - QUIZZ CLASSIC ROCK">
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
    </head>
    <body>

        <%
            Bd bd = new Bd();
            request.setAttribute("userName", null);
            request.setAttribute("password", null);
            boolean isError = false;
            try {

                if (request.getParameter("login") != null) {
                    Usuario user = new Usuario(request.getParameter("userName"), request.getParameter("password"));
                    if (bd.login(user.getLogin(), user.getSenha())) {
                        HttpSession sessao = request.getSession(true);
                        sessao.setAttribute("userName", user.getLogin());
                        sessao.setAttribute("password", user.getSenha());

        %><script type="text/javascript">
        redirectLogin();
        </script> 
        <%} else {
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

            }


        %>
        <%@include file="WEB-INF/header.jspf" %>
        <div id="login" class="bg-faded p-4 my-4"> 
            <h1 class="my-2">LOGIN</h1>
            <fieldset>
                <legend>LOGIN</legend>
                <form action="" id="loginForm" method="POST">
                    <label>Usuário</label>
                    <input type="text" name="userName" required />
                    </br>
                    <label>Senha</label>
                    <input type="password" name="password" required />
                    </br>
                    </br>
                    <input type="submit" name="login" value="Entrar">
                </form>    
            </fieldset>

        <button class="" onclick="register()">Registrar-se</button>
    </div>
    <% if (isError) { %>    
    <div>
        <h5>Usuário ou senha Inválidos</h5>
    </div>
    <%}%>
    <div id="registro">
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
                <input type="submit" name="register" value="Cadastrar">
            </form>
        </fieldset>
    </div>
    <%@include file="WEB-INF/footer.jspf" %>
</body>
</html>
