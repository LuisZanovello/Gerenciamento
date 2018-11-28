
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
<%@ include file = "Header.jsp" %>
<!--fim Header-->


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

        <title>Tipo Espa�o</title>

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
                            <h1 class="text-center">Lista de Tipos de Espacos</h1><hr>  <br><br>
                        </div>
                    </div>
                    </thead>

                    <!--INICIO Tabela botoes incluir e voltar-->

                    <div class="container">
                        <div class="row">                                   
                            <div class="col-lg">
                                <label>
                                    <form action="ManterTipoEspacoController?acao=prepararOperacao&operacao=Incluir" method="post">
                                        <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                    </form>
                                </label>


                            </div>
                        </div>
                    </div>                            

                    <!--FIM Tabela botoes incluir e voltar-->
                    <tr>
                        <!--Tabela-->
                    <div clas="card">
                        <div class="card-body">
                            <c:forEach items="${tiposEspacos}" var="tipoEspaco">

                                <table class="table table-striped">
                                    </thead>
                                    <tbody>


                                        <tr>
                                            <th colspan="1">
                                                Dados dos Tipos de Espa�o : <c:out value ="${tipoEspaco.nome}"/>
                                            </th>

                                            <th colspan="1">
                                                <a href="ManterTipoEspacoController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${tipoEspaco.id}"/>"
                                                   class="btn btn-outline-success" role="button" aria-pressed="true">Editar</a>
                                                <a href="ManterTipoEspacoController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${tipoEspaco.id}"/>"
                                                   class="btn btn-outline-danger" role="button" aria-pressed="true">Excluir</a>
                                            </th>

                                        </tr>

                                        <tr>
                                            <th scope="now">Id</th>
                                            <td><c:out value="${tipoEspaco.id}"/></td>
                                        </tr>
                                        <tr>
                                            <th scope="now">Nome</th>
                                            <td><c:out value="${tipoEspaco.nome}"/></td>
                                        </tr>


                                        
                                    <hr>
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
                                            <form action="ManterTipoEspacoController?acao=prepararOperacao&operacao=Incluir" method="post">
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
                
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->




                    </body>
                    </html>


