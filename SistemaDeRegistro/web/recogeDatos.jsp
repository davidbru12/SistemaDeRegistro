<%-- 
    Document   : recogeDatos2
    Created on : 26 nov 2024, 2:29:38
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String  nombre=request.getParameter("nombre");
            String  apellido=request.getParameter("apellido");
            String  usuario=request.getParameter("usuario");
            String  contraseña=request.getParameter("contraseña");
            String  pais=request.getParameter("pais");
            String  tecnologias=request.getParameter("tecnologias");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/despliegue", 
                "daw2", "1234");
                out.println("Conectado con éxito<br>");
                Statement miStatement = miConexion.createStatement();
                String consultaSQL = "insert into usuarios (Nombre, Apellido, Usuario, Contraseña, Pais, Tecnologia)"
                    + " values ('" + nombre + "','" + apellido + "','" + usuario + "','" + contraseña + "','" + pais + "','" + tecnologias + "')";
                miStatement.executeUpdate(consultaSQL);
                out.println("Registrado Usuario<br>");
            }catch(Exception e){
                out.println(e.getMessage());
            }
        %>
    </body>
</html>
