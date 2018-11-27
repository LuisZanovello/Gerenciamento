
<%--
  Created by IntelliJ IDEA.
  User: viict
  Date: 09/10/2018
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
    <head>

        <!-- include para pesquisa funcionar -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- fim da nova include -->

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



        <!-- Bootstrap core CSS -->

        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/modern-business.css" rel="stylesheet">

        <style>
            footer{
                bottom: 0;
                position: relative; 
                bottom: 0; 
                left: 0px; 
                right: 0px;
                width: 100%;
                text-align: center;
            }
        </style>

        <title>Espa�os</title>

    </head>
    <body>


        <!-- INICIO Navegador superior-->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">iSport</a> <!-- Nome do site emblema no canto esquerdo superior-->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">





                    </ul>
                </div>

                <!-- INICIO DROPDOWN-->
                <div>

                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" 
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Classes
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" 
                                 aria-labelledby="navbarDropdownPortfolio">

                                <a class="dropdown-item" href="PesquisaClienteController">Cliente</a>                                
                                <a class="dropdown-item" href="indexContato.jsp">Contato</a>
                                <a class="dropdown-item" href="PesquisaCartaoController">Cart�o</a>
                                <a class="dropdown-item" href="PesquisaDisponibilidadeController">Disponibilidade</a>

                                <a class="dropdown-item" href="PesquisaEspacoController">Espa�os</a>
                                <a class="dropdown-item" href="PesquisaTipoEspacoController">Tipo de Espa�o</a>
                                <a class="dropdown-item" href="PesquisaModalidadeController">Modalidade</a>
                                <a class="dropdown-item" href="PesquisaIrregularidadeController">Irregularidade</a>


                                <a class="dropdown-item" href="PesquisaReservaController">Reservas</a>
                                <a class="dropdown-item" href="PesquisaPagamentoController">Pagamento</a>
                                <a class="dropdown-item" href="PesquisaReembolsoController">Reembolso</a>
                                

                            </div>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Sair</a> <!-- primeiro link direita superior-->
                        </li>
                    </ul>
                </div>
                <!-- FIM DROPDOWN-->

            </div>
        </nav>
        <!-- FIM Navegador superior-->





        <!-- Corpo da Pagina -->
        <div class="container">

            <!--Inicio Tabela-->

            <div class="col-lg-12">
                <table class="table table-striped">
                    <thead>
                    <br>
                    <div class="col">
                        <div>
                            <h1 class="text-center">Lista de Espa�os</h1><hr>  <br><br>
                        </div>
                    </div>
                    </thead>


                        <!-- INICIO TAG para buscar -->
                        <div class="col-md-12">
                            <input type="text" id="myInput" onkeyup="myFunction()" class="form-control" placeholder="Pesquisa">
                            <script>
                                $(document).ready(function () {
                                    $("#myInput").on("keyup", function () {
                                        var value = $(this).val().toLowerCase();
                                        $("#myTable ${espaco.id.nome}").filter(function () {
                                            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                        });
                                    });
                                });
                            </script>
                        </div>
                        <!-- FIM TAG para buscar -->
                        
                          <!--INICIO Tabela botoes incluir e voltar-->

                    <div class="container">
                        <div class="row">                                   
                            <div class="col-lg">
                                <label>
                                    <form action="ManterEspacoController?acao=prepararOperacao&operacao=Incluir" method="post">
                                        <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                    </form>
                                </label>
                           
                                
                            </div>
                        </div>
                    </div>                            

                   <!--FIM Tabela botoes incluir e voltar-->

                    <div clas="card">
                        <div class="card-body">
                            <c:forEach items="${espacos}" var="espaco">

                                <table class="table table-striped" id="myTable">

                                    <tbody>

                                        <tr>
                                            <th colspan="1" >
                                                Dados do Espa�o : <c:out value ="${espaco.nome}"/>
                                            </th>
                                            <th>
                                            <a href="ManterEspacoController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${espaco.id}"/>"
                                           class="btn btn-outline-success" role="button" aria-pressed="true">Editar</a>
                                            <a href="ManterEspacoController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${espaco.id}"/>"
                                           class="btn btn-outline-danger" role="button" aria-pressed="true">Excluir</a>
                                        </th>
                                        </tr>
                                        

                                        <tr>
                                            <th scope="now"> ID </th>
                                            <td><c:out value="${espaco.id}" /></td>
                                        </tr>

                                        <tr>
                                            <th scope="now"> Nome </th>
                                            <td><c:out value="${espaco.nome}" /></td>
                                        </tr>

                                        <tr>
                                            <th scope="now"> Cidade </th>
                                            <td><c:out value="${espaco.cidade}" /></td>
                                        </tr>

                                        <tr>
                                            <th scope="now"> Estado </th>
                                            <td><c:out value="${espaco.uf}" /></td>
                                        </tr>

                                    
                                    <hr>

                                    </tbody>

                                </table>
                                <hr>
                                <br>
                            </c:forEach>

                            <!--INICIO Tabela botoes incluir e voltar-->

                            <div class="container">
                                <div class="row">
                                    <div class="col-lg">
                                        <label>
                                            <form action="ManterEspacoController?acao=prepararOperacao&operacao=Incluir" method="post">
                                                <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                            </form>
                                        </label>
                                     
                                        
                                    </div>
                                </div>
                            </div> 

                            <!--FIM Tabela botoes incluir e voltar-->

                        </div>
                    </div>
                    <hr>

                    <!-- INICIO Footer -->
                    <footer class="py-5 bg-dark">
                        <div class="container">
                            <p class="m-0 text-center text-white">LP2 - professor Marco Antonio &copy; Gerenciamento de Espa�os 2018</p> 
                            <p class="m-0 text-center text-gray"> Izabella R. - Luis G. - Victor W. </p>
                        </div>
                        <!-- /.container -->
                    </footer>

                    <!-- Bootstrap core JavaScript -->
                    <script src="vendor/jquery/jquery.min.js"></script>
                    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                    <!-- FIM Footer -->

                    </body>
                    </html>
