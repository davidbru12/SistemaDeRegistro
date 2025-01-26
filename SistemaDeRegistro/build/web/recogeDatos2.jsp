<%-- 
    Document   : recogeDatos
    Created on : 6 nov 2024, 12:09:40
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% 
            String  nombre=request.getParameter("nombre");
            String  apellido=request.getParameter("apellido");
            String  usuario=request.getParameter("usuario");
            String  password=request.getParameter("contraseña");
            String  pais=request.getParameter("pais");
            String  tecnologias=request.getParameter("tecnologias");
        %>
    </head>
    <body>
        <h1>Testeo:</h1>
        <p><%= nombre %></p>
        <p><%= apellido %></p>
        <p><%= usuario %></p>
        <p><%= password %></p>
        <p><%= pais %></p>
        <p><%= tecnologias %></p>
        
    </body>
</html>
