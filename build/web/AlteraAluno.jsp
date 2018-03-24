<%-- 
    Document   : AlteraAluno
    Created on : 29/05/2017, 19:59:03
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 <sql:setDataSource var="ds" driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/academicoc" user="java2" password="java2" scope="session" />
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <c:import url="cabecalho.jsp"/>
        <br>
        <br><br>
        <sql:query var="ResultadoAlunos" dataSource="${ds}">
            select * from aluno where id=?
            <sql:param value=" ${param.id}" />
        </sql:query>
        <c:forEach var="aluno" items="${ResultadoAlunos.rows}">
            <h1>Alteração Dados do Aluno</h1>
            <br>
            <br><br>
            <form method="POST" action="confirmaAlteracao.jsp">
                Matricula.: <input type="text" name="matricula" size="10" ><BR>
                Nome......: <input type="text" name="nome" size="10" ><BR>
                Endereço.: <input type="text" name="endereco" size="10"><BR>
                Telefone.: <input type="text" name="matricula" size="10"><BR>
                <p><input type="submit" value="Alterar"></p>
</form>
        </c:forEach>
            <hr>
    <center><a href="ListaAlunos.jsp">Voltar</a></center>
        <c:import url="rodape.jsp"/>        

    
