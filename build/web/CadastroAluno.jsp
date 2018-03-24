<%-- 
    Document   : CadastroAluno
    Created on : 22/05/2017, 21:16:45
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Alunos</title>
    </head>
    <body>
        <c:import url= "cabecalho.jsp"/>
        <h1>Cadastro de Alunos</h1>
        <hr>
        <br><br>
        <form method="post" action="GravaAluno.jsp">
            Matricula.: <input type="text" name="matricula" size="10" required><BR>
            Nome......: <input type="text" name="nome" size="10" required><BR>
            Endereço.: <input type="text" name="endereco" size="10"><BR>
            Telefone.: <input type="text" name="matricula" size="10"><BR>
            <p><input type="submit" value="Gravar" onclick >
                <input type="reset" value="Limpar"></p>
        </form>
        <br><br>
        <hr>
    <center><a href="index.jsp">Voltar</a></center>
        <c:import url="rodape.jsp" />

</body>
</html>
