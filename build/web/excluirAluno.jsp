<%-- 
    Document   : excluirAluno
    Created on : 29/05/2017, 21:05:52
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exclusão de Aluno</title>
    </head>
    <body>
        <c:import url="cabecalho.jsp"/>
        <hr>
        <br><br>
        <sql:update dataSource="${ds}">
            delete from aluno where id=?
            <sql:param value="${param.id}"/>
        </sql:update>
            <center><h1>Exclusão Efetuada com Êxito</h1></center>
<br><br>
<hr>
<center><a href="ListaAlunos.jsp">Voltar</a></center>
    <c:import url="rodape.jsp"/>
</body>
</html>
