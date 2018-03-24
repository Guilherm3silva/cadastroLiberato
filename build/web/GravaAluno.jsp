<%-- 
    Document   : GravaAluno
    Created on : 22/05/2017, 21:39:57
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="WINDOWS-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gravação Aluno</title>
    </head>
    <body>
        <c:import url="cabecalho.jsp"/>
        <hr>
        <br><br>
        <sql:update dataSource="${ds}">
            insert into aluno (matricula,nome,endereco,telefone) values (?,?,?,?)
            <sql:param value="${param.matricula}" />
            <sql:param value="${param.nome}" />
            <sql:param value="${param.endereco}" />
            <sql:param value="${param.telefone}" />
            </sql:update>
            <center><h2>${param.nome} Gravado com sucesso !!</h2></center>
            <br><br>
            <hr>
            <center><a href="index.jsp">Voltar</a></center>
                <c:import url="rodape.jsp" />
        </body>
    </html>
