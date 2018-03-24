<%-- 
    Document   : confirmaExclusao
    Created on : 29/05/2017, 20:56:47
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            if (confirm("Tem certeza que deseja excluir ?")) {

                window.location = "excluirAluno.jsp?id=${param.id}";


            } else {
                window.location = "ListaAlunos.jsp";
            }

        </script>
    </body>
</html>
