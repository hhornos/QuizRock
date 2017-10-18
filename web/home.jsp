<%-- 
    Document   : home
    Created on : 11/10/2017, 21:41:56
    Author     : hhornos
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.quiz.Historico"%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<!DOCTYPE html>
<html lang="br">
    <head>
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
    </head>

    <body>
        <%@include file="WEB-INF/header.jspf" %>
        <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 pt-5 d-none d-lg-block">Quiz Classic Rock</div>
        <div class="tagline-lower text-center text-expanded text-shadow text-uppercase text-white mb-5 d-none d-lg-block">Praça 19 de janeiro, 144 - Praia Grande - São Paulo - CEP: 11700-100<br/>Tel: (13) 3591-1303 / (13) 3591-6968</div>
        <div class="container">

            <div class="bg-faded p-4 my-4">
                <!-- Image Carousel -->
                <div id="carouselImagensRock" class="carousel" data-ride="carousel" >
                    <ol class="carousel-indicators">
                        <li data-target="#carouselImagensRock" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselImagensRock" data-slide-to="1"></li>
                        <li data-target="#carouselImagensRock" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="d-block img-fluid w-100" src="./assets/img/acdc.jpg" alt="">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid w-100" src="./assets/img/ozzyxdio.jpg" alt="">
                        </div>
                        <div class="carousel-item">
                          <img class="d-block img-fluid w-100" src="./assets/img/ledzeppelin.jpg" alt="">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselImagensRock" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Anterior</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselImagensRock" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Próximo</span>
                    </a>
                </div>
                <!-- Welcome Message -->
                <div class="text-center mt-4">
                    <div class="text-heading text-muted text-lg">Seja Bem vindo!</div>
                    <h1 class="my-2">Responda nosso <a href="quiz.jsp" >QUIZ</a> Classic Rock</h1>
                    <div class="text-heading text-muted text-lg">By
                        <strong>Fatec Dream Team</strong>
                    </div>
                </div>
            </div>

            <div id="our-team" class="bg-faded p-4 my-4">
                <hr class="divider">
                <h2 class="text-center text-lg text-uppercase my-0">
                    <strong>Nosso Time</strong>
                </h2>
                <hr class="divider">
                <div class="row">
                    <div class="col-md-3">
                        <img class="img-fluid mr-4 rounded-circle" src="./assets/img/henrique_hornos.jpg" alt="">
                    </div>
                    
                    <div class="col-md-9">
                        <h2>Henrique Escobar Hornos</h2>
                        <br/>
                        <p>Analista/Desenvolvedor de terminais embarcados, especialista no mercado de pagamentos eletronico, aprendendo programação WEB FULL STACK utilizando Java EE, entusiasta de software livre e apaixonado por música</p>
                    </div>
                    <br/>
                </div>
                <br/>
                <div class="row">
                    <div class="col-md-3">
                        <img class="img-fluid mr-4 rounded-circle" src="./assets/img/rodrigo_corneta.jpg" alt="">
                    </div>
                    <div class="col-md-9">
                        <h2>Rodrigo Corneta F. de Alcantara</h2>
                        <br/>
                        <p>Adicione Aqui o seu cargo</p>
                    </div>
                    <br/>
                </div>
                <br/>
                <div class="row">
                    <div class="col-md-3">
                        <img class="img-fluid mr-4  rounded-circle" src="./assets/img/luiz_maciel.jpg" alt="">
                    </div>
                    <div class="col-md-9">
                        <h2>Luiz Maciel S. dos Santos</h2>
                        <br/>
                        <p>Desenvolvedor back end, realizando curso superior de análise e desenvolvimento de sistemas, aprendendo programação orientada a objeto</p>
                    </div> 
                    <br/>
                </div>
                <br/>
                <div class="row">
                    <div class="col-md-3">
                        <img class="img-fluid mr-4 rounded-circle" src="./assets/img/vinicius_loreto.jpg" alt="">
                    </div>
                    <div class="col-md-9">
                        <h2>Vinicius Loreto Ferreira </h2>
                        <br/>
                        <p>Analista e desenvolvedor de sistemas/ Técnico em desenvolvimento de sistemas elétricos / Pesquisador de novas tecnologias nos campos da informática.</p>
                    </div>
                    <br/>
                </div>
                <br/>
            </div>
        </div>

        <div class="container">
            <div id="all-score" class="bg-faded p-4 my-4">
                
                <hr class="divider">
                <h2 class="text-center text-lg text-uppercase my-0">
                    <strong>Placar Geral</strong>
                </h2>
                <hr class="divider">
                <hr>
                
                <%  Bd bd = new Bd();
                    
                    int j = 0;
                    int len = bd.getHistorico().size();
                    if (len > 10)
                        len = 10;
                
                    if(bd.getHistorico().size()!=0){
                    int[] arrayNumeros = null;
                    arrayNumeros = new int[bd.getHistorico().size()];
                    String[] arrayNomes = new String[bd.getHistorico().size()];

                    for(int i=0;i<bd.getHistorico().size();i++){
                        Historico h= Bd.getHistorico().get(i);
                        arrayNumeros[i] = h.getNota();
                        arrayNomes[i] = h.getNome();
                    }
                    int aux = 0;
                    String auxiliar = "";

                        for (int i = 0; i < arrayNumeros.length; i++){
                            
                            for (int x = 0; x < arrayNumeros.length; x++){
                                if (arrayNumeros[i] > arrayNumeros[x]){

                                aux = arrayNumeros[i];
                                auxiliar = arrayNomes[i];
                                arrayNumeros[i] = arrayNumeros[x];
                                arrayNumeros[x] = aux;
                                arrayNomes[i] = arrayNomes[x];
                                arrayNomes[i] = auxiliar;
                            }
                        }
                    }%>
                    
                    <table class="table">
                        <thead class="thead-inverse">
                            <tr>
                                <th>Posição</th>
                                <th>Nome</th>
                                <th>Nota</th>
                            </tr>
                        </thead>
                        <%
                        
                        if(arrayNumeros.length<=10){    
                        for(int c = 0; c<arrayNumeros.length;c++){
                        %>
                        <tbody>
                        <tr>
                            <td><%=c+1%></td>
                            <td><%=arrayNomes[c]%></td>
                            <td><%=arrayNumeros[c]%></td>
                        </tr>
                        </tbody>
                        <%}}else {
                        for(int c = 0; c<10;c++){
                        %>
                        <tbody>
                            <tr>
                                <td><%=c+1%></td>
                                <td><%=arrayNomes[c]%></td>
                                <td><%=arrayNumeros[c]%></td>
                            </tr>
                        </tbody>
                        <%}}%>
                    </table>
                    <br/>
            </div>
        </div>  
        <div class="container">
            <div id="last-test" class="bg-faded p-4 my-4">           
                
                <hr class="divider">
                <h2 class="text-center text-lg text-uppercase my-0">
                    <strong>Testes Recentes</strong>
                </h2>
                <hr class="divider">
                    <table class="table">
                        <thead class="table-inverse">
                            <tr>
                                <td>Teste Nro</td>
                                <td>Nome</td>
                                <td>Nota</td>
                            </tr>
                        </thead>
                    <%
                    
                    
                    for(int i=bd.getHistorico().size() -1; j<len; i--){
                        j++;
                        Historico h= Bd.getHistorico().get(i);%>
                        <tbody>
                            <tr>
                                <td><%=i + 1 %></td>
                                <td><%=h.getNome() %></td>
                                <td><%=h.getNota() %></td>
                            </tr>
                        </tbody>
                    <%}%>
                            </table>
                    <%}%>
            </div>
        </div>

        <!-- /.container -->
        <%@include file="WEB-INF/footer.jspf" %>
    </body>

</html>
