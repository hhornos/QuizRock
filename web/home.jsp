<%-- 
    Document   : home
    Created on : 11/10/2017, 21:41:56
    Author     : hhornos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="br">
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
        <%@include file="WEB-INF/header.jspf" %>
        <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 pt-5 d-none d-lg-block">Quizz Classic Rock</div>
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
                            <img class="d-block img-fluid w-100" src="assets/img/acdc.jpg" alt="">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block img-fluid w-100" src="assets/img/ozzyxdio.jpg" alt="">
                        </div>
                        <div class="carousel-item">
                          <img class="d-block img-fluid w-100" src="assets/img/ledzeppelin.jpg" alt="">
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
                <div>
                    <div class="col-md-3">
                        <img class="img-fluid float-left mr-4 d-lg-block rounded-circle" src="./assets/img/henrique_hornos.jpg" alt="">
                    </div>
                    
                    <div class="col-md-12">
                        <h2>Henrique Escobar Hornos</h2>
                        <br/>
                        <p>Analista/Desenvolvedor de terminais embarcados, especialista no mercado de pagamentos eletronico, aprendendo programação programação WEB FULL STACK utilizando Java EE, entusiasta de software livre e apaixonado por música</p>
                    </div>
                    <br/>
                    <br/>
                </div>
                <br/>
                <br/>
                <div>
                    <div class="col-md-3">
                        <img class="img-fluid float-left mr-4 d-lg-block rounded-circle" src="./assets/img/rodrigo corneta.jpg" alt="">
                    </div>
                    <div class="col-md-12">
                        <h2>Rodrigo Corneta F. de Alcantara</h2>
                        <br/>
                        <p>Adicione Aqui o seu cargo</p>
                    </div>
                    <br/>
                    <br/>
                </div>
                <br/>
                <br/>
                <div>
                    <div class="col-md-3">
                        <img class="img-fluid float-left mr-4  d-lg-block rounded-circle" src="./assets/img/luiz_maciel.jpg" alt="">
                    </div>
                    <div class="col-md-12">
                        <h2>Luiz Maciel S. dos Santos</h2>
                        <br/>
                        <p>Adicione Aqui o seu cargo</p>
                    </div> 
                    <br/>
                    <br/>
                </div>
                <br/>
                <br/>
                <div>
                    <div class="col-md-3">
                        <img class="img-fluid float-left mr-4 d-lg-block rounded-circle" src="./assets/img/vinicius_loreto.jpg" alt="">
                    </div>
                    <div class="col-md-12">
                        <h2>Vinicius Loreto Ferreira </h2>
                        <br/>
                        <p>Adicione Aqui o seu cargo</p>
                    </div>
                    <br/>
                    <br/>
                </div>
                <br/>
                <br/>
            </div>

            <div id="all-score" class="bg-faded p-4 my-4">
                <hr class="divider">
                <h2 class="text-center text-lg text-uppercase my-0">
                    <strong>Placar Geral</strong>
                </h2>
                <hr class="divider">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam soluta dolore voluptatem, deleniti dignissimos excepturi veritatis cum hic sunt perferendis ipsum perspiciatis nam officiis sequi atque enim ut! Velit, consectetur.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam pariatur perspiciatis reprehenderit illo et vitae iste provident debitis quos corporis saepe deserunt ad, officia, minima natus molestias assumenda nisi velit?</p>
            </div>

        </div>
        <!-- /.container -->
        <%@include file="WEB-INF/footer.jspf" %>
    </body>

</html>
