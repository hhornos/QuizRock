<%-- 
    Document   : quiz
    Created on : 11/10/2017, 21:42:35
    Author     : hhornos
--%>

<%@page import="br.com.fatecpg.quiz.Questao"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Historico"%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
    </head>
    <body>
        <%@include file="./WEB-INF/header.jspf" %>
        <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 pt-5 d-none d-lg-block">Quizz Classic Rock</div>
        <% if (username != null) {
                if (request.getParameter("finalizar") != null) {
                    int acertos = 0;
                    Quiz q = new Quiz();
                    q.setUser(username);
                    for (int x = 0; x < 10; x++) {
                        Questao p = q.getQuestoes().get(x);
                        String resposta = request.getParameter(Integer.toString(p.getNumero()));
                        if (resposta != null) {
                            if (resposta.equals(p.getResposta())) {
                                acertos++;
                            }   
                        }
                    }
                    q.setSoma(acertos);
                    
                    Historico h = new Historico();
                    h.addNota(acertos,username);
                    Bd bancodedados = new Bd();
                    bancodedados.addHistorico(h);
                    
                    
                    
                    %>
                    
                    
                    <div class="bg-faded">
                    <%out.print("<script>alert('Parabens você acertou : "+acertos+" ');</script>");
                    out.println("media de acertos: "+q.getMedia());
                    out.println("Nome do usuário atribuido ao quiz: "+q.getUser());%>
                    </div>
                    <%  
                   
                    
                }
            %>        
        <div class="container">
            <div class="bg-faded p-4 my-4">
                <form method="POST">
                    <%for (int i = 1; i < 11; i++) {
                          Questao p = Quiz.getQuestoes().get(i-1);
                    %>
                    <h3>Questão <%=i%>:</h3>
                    <h4><%=p.getPergunta()%></h4>
                    <input type="radio" name="<%=p.getNumero()%>" value="<%=p.getAlternativas()[0]%>" required/>
                    <%=p.getAlternativas()[0]%> </br>      
                    <input type="radio" name="<%=p.getNumero()%>" value="<%=p.getAlternativas()[1]%>" required/>
                    <%=p.getAlternativas()[1]%>  </br>   
                    <input type="radio" name="<%=p.getNumero()%>" value="<%=p.getAlternativas()[2]%>" required/>
                    <%=p.getAlternativas()[2]%>  </br>   
                    <br/>
                    <%}%>
                    <br/>
                    <input class="btn btn-success btn-lg" type="submit" name="finalizar" value="Finalizar"/>
                </form>
            </div>
<%
    Bd bd = new Bd();
    if(bd.getHistorico().size()!=0){%>
        <div class="bg-faded p-4 my-4">
            <h4>Ultimos testes realizados</h4>
            <table style="width:100%;">
                <tr>
                    <td>Teste nro</td>
                    <td>Nome</td>
                    <td>Nota</td>
                </tr>
                            
                <%
                    int j = 0;
                    int len = bd.getHistorico().size();
                    if (len > 10)
                        len = 10;
                    
                    for(int i=bd.getHistorico().size() -1; j<len; i--){
                        j++;
                        Historico h= Bd.getHistorico().get(i);%>
                            <tr>
                                <td><%=i + 1 %></td>
                                <td><%=h.getNome() %></td>
                                <td><%=h.getNota() %></td>
                            </tr>
                    <%}%>
                            </table>
                            </div>
                    <%}%>
                    
        </div>
        <%}else{
                response.sendRedirect(request.getContextPath() + "/login.jsp");
                }%>
        <%@include file="./WEB-INF/footer.jspf" %>
    </body>
</html>
