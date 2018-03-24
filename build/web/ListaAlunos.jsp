<%@page contentType="text/html" pageEncoding="WINDOWS-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Lista de Alunos Cadastrados</title>
    </head>
    <body>
        <c:import url="cabecalho.jsp"/>
        <div class="container">
            <h1>Relação de Alunos Linguagem de Programação D</h1>
            <hr>
            <sql:query var="ResultadoAlunos" dataSource="${ds}">
                select * from aluno
            </sql:query>            
            <table border="l" align="center">
                <tr>
                    <th>Matricula</th>
                    <th>Nome</th>
                    <th>Endereço</th>
                    <th>Telefone</th>
                    <th>Exclui</th>
                    <th>Altera</th>
                </tr>
                <c:forEach var="ListaAlunos" items="${ResultadoAlunos.rows}">
                    <tr>
                        <!-- A tag out é responsável por gerar uma string de saída na tela !-->
                        <td><c:out value="${ListaAlunos.matricula}"/></td>
                        <td><c:out value="${ListaAlunos.nome}"/></td>
                        <td><c:out value="${ListaAlunos.endereco}"/></td>
                        <td><c:out value="${ListaAlunos.telefone}"/></td>
                        <td align="center">
                            <a href="confirmaExclusao.jsp?id=${ListaAlunos.id}">
                                <img src="imagens/x.jpg"></a></td>
                        <td align="center">
                            <a href="AlteraAluno.jsp?id=${ListaAlunos.id}">
                                <img src="imagens/ticado.jpg"></a></td>
                    </tr>
                </c:forEach>
            </table>
            <hr>
            <center><a href="index.jsp">Voltar</a></center>
                <c:import url="rodape.jsp"/>                             
        </div>
    </body>

</html>

