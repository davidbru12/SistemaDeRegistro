<%-- 
    Document   : validaUser
    Created on : 26 nov 2024, 10:29:02
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valida User</title>
    </head>
    <body>
        <%
            String usuario=request.getParameter("usuario");
            String contraseña=request.getParameter("contraseña");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection laConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/despliegue", "daw2", "1234");
                out.println("Conectado con éxito<br>");
                
                PreparedStatement consultaPreparada = laConexion.prepareStatement(
                    "SELECT * FROM usuarios WHERE usuario = ? AND contraseña = ?",
                    ResultSet.TYPE_SCROLL_INSENSITIVE,  // Permite moverse hacia adelante y hacia atrás
                    ResultSet.CONCUR_READ_ONLY         // Solo lectura
                );

                consultaPreparada.setString(1, usuario);
                consultaPreparada.setString(2, contraseña);

                ResultSet miResulset = consultaPreparada.executeQuery();
            
                if(miResulset.absolute(1)){
                    out.println("Usuario encontrado <br>");
                }else{
                    out.println("Usuario NO encontrado <br>");
                }

                miResulset.close();
                consultaPreparada.close();
                laConexion.close();
            
            } catch (Exception e) {
            out.println("Error: " + e.getMessage() + "<br>");
            }
        
        %>
    </body>
</html>
