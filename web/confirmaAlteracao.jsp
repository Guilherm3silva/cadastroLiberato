<%-- 
    Document   : confirmaAlteracao
    Created on : 29/05/2017, 20:19:20
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração do Aluno</title>
    </head>
    <body>
        <c:import url="cabecalho.jsp"/>
        <hr>
        <br><br>
        <sql:update dataSource="${ds}">
            update aluno set matricula=?,nome=?,endereco=?,telefone=? where id=?
            <sql:param value= "${param.matricula}" />
            <sql:param value= "${param.nome}" />
            <sql:param value= "${param.endereco}" />
            <sql:param value= "${param.telefone}" />
            <sql:param value= "${param.id}" />
        </sql:update>
    <center><h7>
            ${param.nome}Alterado com sucesso!!!
        </h7></center>
</body>
</html>
