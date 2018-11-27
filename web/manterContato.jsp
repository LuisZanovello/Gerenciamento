                 
<%-- 
    Document   : manterAdmin
    Created on : 23/10/2018, 09:43:17
    Author     : viict
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
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

        <style>
            footer{
                bottom: 0;
                position: absolute; 
                bottom: 0; 
                left: 0px; 
                right: 0px;
                width: 100%;
                text-align: center;
            }
        </style>



        <!-- INICIO JavaScript para o formulario-->

        <script language="javascript" type="text/javascript">
            function validar() {
                var txtIdContato = form1.txtIdContato.value;
                var txtNumeroContato = form1.txtNumeroContato.value;
                var optCliente = form1.optCliente.value;




                if (txtIdContato === "") {
                    alert('Preencha o campo com um c�digo, n�o permita que seja vazio');
                    form1.txtIdContato.focus();
                    return false;
                }

                if (txtIdContato >= 9999999999) {
                    alert('O campo de c�digo foi preenchido acima do suportado (10 d�gitos) ');
                    form1.txtIdContato.focus();
                    return false;
                }

                if (txtIdContato <= 0) {
                    alert('Preencha o campo com um c�digo ACIMA de n�mero NEGATIVO');
                    form1.txtIdContato.focus();
                    return false;
                }

                if (txtNumeroContato === "") {
                    alert('Preencha o campo "N� do Contato"');
                    form1.txtNumeroContato.focus();
                    return false;
                }
                
                if (optCliente === "") {
                    alert('Preencha o campo "Cliente"');
                    form1.optContato.focus();
                    return false;
                }

            }
        </script>

        <!-- FIM JavaScript para o formulario-->

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Contato - ${operacao}</title>




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
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Classes
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">

                                <a class="dropdown-item" href="PesquisaClienteController">Cliente</a>                                
                                <a class="dropdown-item" href="PesquisaContatoController">Contato</a>
                                <a class="dropdown-item" href="PesquisaCartaoController">Cart�o</a>
                                <a class="dropdown-item" href="PesquisaDisponibilidadeController">Disponibilidade</a>

                                <a class="dropdown-item" href="PesquisaEspacoController">Espa�os</a>
                                <a class="dropdown-item" href="PesquisaTipoEspacoController">Tipo de Espa�o</a>
                                <a class="dropdown-item" href="PesquisaModalidadeController">Modalidade</a>
                                <a class="dropdown-item" href="PesquisaIrregularidadeController">Irregularidade</a>


                                <a class="dropdown-item" href="PesquisaReservaController">Reservas</a>
                                <a class="dropdown-item" href="PesquisaPagamentoController">Pagamento</a>
                                <a class="dropdown-item" href="PesquisaReembolsoController">Reembolso</a>    

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


        <br>
        <div class="container">
            <div class="col-lg-12">
                <div>
                    <h1 class="text-center"> Contato - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>


            <form name="form1" action="ManterContatoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterContato">

                <!--Inicio Tabela-->

                <div class="col-lg-7">

                    <!--Div centralizadora-->
                </div>
                <div class="col-lg-9">
                    <table class="table table-striped">
                        <thead>
                        <tbody>
                        <br>

                        <tr>
                            <td>C�digo do contato: </td>
                            <td><input  type="number"  min="1" class="form-control" name="txtIdContato" value="${contato.id}"  <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>N�mero de contato: </td>
                                <td><input type="text" class="form-control" name="txtNumeroContato" value="${contato.numero}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <td>Cliente:</td>
                            <td>
                                <select class="form-control" name="optCliente"  <c:if test="${operacao == 'Excluir'}" > readonly </c:if>>
                                <c:forEach items="${clientes}" var="cliente">
                                    <option value="${cliente.id}" <c:if test="${cliente.id == contato.idCliente}"> </c:if>>${cliente.nome}</option>  
                                </c:forEach>
                            </select>
                        </td>
                        </tr>

                        </tbody>
                    </table>


                    <input type="submit" onclick="return validar()"  name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

                    <a href="PesquisaContatoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>


                </div>      
            </form>

            <hr>
            <!-- Footer -->
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

    </body>
</html>