<%-- 
    Document   : index
    Created on : 1/10/2018, 08:10:02 AM
    Author     : Alumno
--%>


<!DOCTYPE html>
<%-- <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <button onclick="<jsp:forward page="jsp/Registro.jsp"/>"></button>
        
    </body>
</html>--%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="css.css">
<%
    if(request.getParameter("botonRegistro") !=null){
%>
    <jsp:forward page="registrarusuarios.jsp"></jsp:forward>
<%
    return;
    }
else
if(request.getParameter("botonLogin") !=null){
%>
<jsp:forward page="jsp/Login.jsp"></jsp:forward>
<%
    return;
    }
%>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <form action="index.jsp">
            <input type="submit" name="botonRegistro" value="Crear cuenta" class="noo">
            <input type="submit" name="botonLogin" value="Iniciar Sesión" class="noo">
        </form>
    </body>
</html>