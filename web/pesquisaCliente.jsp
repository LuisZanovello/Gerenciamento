
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        
<!--inicio Header-->
<%@ include file = "HeaderAdmin.jsp" %>
<!--fim Header-->

       
       

        <title> Cliente ${operacao}</title>

    </head>
    <body>

   
        

        <!-- Corpo da Pagina -->
        <div class="container">

            <!--Inicio Tabela-->

            <div class="col-lg-12">
                <table class="table table-striped">
                    <thead>
                    <br>
                    <div class="col">
                        <div>
                            <h1 class="text-center">Lista de Clientes</h1><hr>  <br><br>
                        </div>
                    </div>
                    </thead>

                    <!-- INICIO TAG para buscar -->
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <input type="text" id="myInput" onkeyup="myFunction()" class="form-control" placeholder="Pesquisa">
                                <script>
                                    $(document).ready(function () {
                                        $("#myInput").on("keyup", function () {
                                            var value = $(this).val().toLowerCase();
                                            $("#myTable ${admin.id.nome}").filter(function () {
                                                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                            });
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                    <!-- FIM TAG para buscar -->

                    <!--INICIO Tabela botoes incluir e voltar-->

                    <div class="container">
                        <div class="row">                                   
                            <div class="col-lg">
                                <label>
                                    <form action="ManterClienteController?acao=prepararOperacao&operacao=Incluir" method="post">
                                        <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                    </form>
                                </label>
                                <label>
                                    <a href="indexCliente.jsp"><button class="btn btn-outline-dark btn-sm" value="Voltar">Voltar</button></a>
                                </label>
                            </div>
                        </div>
                    </div>                            

                    <!--FIM Tabela botoes incluir e voltar-->

                    <div clas="card">
                        <div class="card-body">
                            <c:forEach items="${clientes}" var="cliente">

                                <table class="table table-striped" id="myTable">

                                    <tbody>

                                        <tr>
                                            <th colspan="1">
                                                Dados do Cliente : <c:out value ="${cliente.nome}"/>
                                            </th>
                                            
                                            <th colspan="1">
                                                       <a href="ManterClienteController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${cliente.id}"/>"
                                           class="btn btn-outline-success" role="button" aria-pressed="true">Editar</a>
                                    <a href="ManterClienteController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${cliente.id}"/>"
                                           class="btn btn-outline-danger" role="button" aria-pressed="true">Excluir</a>
                                            </th>
                                            
                                        </tr>
                                        <tr>
                                            <th scope="now"> ID </th>
                                            <td><c:out value="${cliente.id}"/></td>
                                        </tr>
                                        <tr> 
                                            <th scope="now"> Nome </th>
                                            <td><c:out value="${cliente.nome}"/></td>
                                        </tr>

                                        <tr> 
                                            <th scope="now"> Sobrenome </th>
                                            <td><c:out value="${cliente.sobrenome}"/></td>
                                        </tr>
                                        <tr>
                                            <th scope="now"> Nascimento </th>
                                            <td><c:out value="${cliente.dataNascimento}"/></td>
                                        </tr>

                                        <tr>
                                            <th scope="now"> E-mail </th>
                                            <td><c:out value="${cliente.email}"/></td>
                                        </tr>

                                        <tr>
                                            <th scope="now"> CPF </th>
                                            <td><c:out value="${cliente.cpf}"/></td>
                                        </tr>

                                      


                                 

                                    </tbody>

                                </table>
                                <hr>
                                <br><br><br>
                            </c:forEach>


                            <!--INICIO Tabela botoes incluir e voltar-->

                            <div class="container">
                                <div class="row">
                                    <div class="col-lg">
                                        <label>
                                            <form action="ManterClienteController?acao=prepararOperacao&operacao=Incluir" method="post">
                                                <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                            </form>
                                        </label>
                                        <label>
                                            <a href="indexCliente.jsp"><button class="btn btn-outline-dark btn-sm" value="Voltar">Voltar</button></a>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <!--FIM Tabela botoes incluir e voltar-->
                        </div>
                    </div>


   
                            
                            
      <hr>
                
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->




                    </body>
                    </html>


