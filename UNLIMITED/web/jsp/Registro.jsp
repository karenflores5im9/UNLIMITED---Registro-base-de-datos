<%-- 
    Document   : Registro
    Created on : 1/10/2018, 07:32:57 AM
    Author     : itz
--%>

<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = request.getParameter("usuario");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Página Registro</h1>
        <jsp:useBean id="usuario" scope="page" class="mx.adu.ipn.cecyt9.unlimited.model.Usuario_1" >
        </jsp:useBean>
        ${usuario.setNombre("<%=usuario%>")}
        ${usuario.nombre}
        <input type="text" name="usuario" placeholder="Usuario">
        <jsp:getProperty>Usuario_1.nombre</jsp:getProperty> 
    </body>
</html>
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="estiloGeneral.css">
    </head>
    <body>
        <%
            Connection conexion = null;
            Statement sentencia = null;
            ResultSet resultado = null;
            String url="jdbc:mysql://localhost/unlimited";
            String user="root";
            String password="n0m3l0";
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection(url, user, password);
                sentencia = conexion.createStatement();
                System.out.println("Si se conecto");
            }
            catch(Exception e){
                System.out.println("NO se conecto");
            }
        %>
        <header>
            <h1 align="center"></h1>
        </header>
        <%
            String usuario = request.getParameter("nombreusu");
            String correo = request.getParameter("correo");
            String contra = request.getParameter("contra");
            String contra2 = request.getParameter("contra2");
            String nombre = request.getParameter("nombre");
            String apellidoPaterno = request.getParameter("apellidoPaterno");
            String apellidoMaterno = request.getParameter("apellidoMaterno");
            String telefono = request.getParameter("telefono");
            try{
                if(contra.equals(contra2)){
                    sentencia.executeUpdate("insert into usuarios (usuario, correo, contra, nombre, apellidoPaterno, apellidoMaterno, telefono) values('"+usuario+"','"+correo+"','"+contra+"','"+nombre+"','"+apellidoPaterno+"','"+apellidoMaterno+"','"+telefono+"');");
                    out.println("<script>alert('Registro exitoso uwu')</script>");
                    try{
                        try{
                        Class.forName("com.mysql.jdbc.Driver");
                        conexion = DriverManager.getConnection(url, user, password);
                        sentencia = conexion.createStatement();
                        System.out.println("Si se conecto");
                    }
                    catch(Exception e){
                        System.out.println("NO se conecto");
                    }
                    resultado = sentencia.executeQuery("select * from usuarios where usuario = '"+usuario+"' and contra = '"+contra+"'");
                    int contador = 0;
                    while(resultado.next()){
                        contador++;
                    }
                    if(contador == 1){
                        HttpSession sesion = request.getSession(true);
                        sesion.setAttribute("usuario", usuario);
                        response.sendRedirect("...inicio.jsp");
                    }
                    else{
                        try{
                            /* TODO output your page here. You may use following sample code. */
                            out.println("<!DOCTYPE html>");
                            out.println("<html>");
                            out.println("<head>");
                            out.println("<title>Servlet Login</title>");            
                            out.println("</head>");
                            out.println("<body>");
                            out.println("<script>alert('Usuario o contraseña incorrectos')</script>");
                            out.println("<script>window.location='index.jsp'</script>");
                            out.println("</body>");
                            out.println("</html>");
                            }
                        catch(Exception e){
                    System.out.println("Error en la conexion");
                }
                        HttpSession sesion = request.getSession(false);
                    }
                }catch(Exception e){
                    System.out.println("Error en la conexion");
                }
                            //out.println("<script>window.location='principal.html'</script>");
                        }       
                else{
                    out.println("<script>alert('Las contraseñas no coinden unu')</script>");
                    out.println("<script>window.location='registrarusuarios.jsp'</script>");
                    System.out.println("No entro");
                }
            }catch(Exception e){
                out.println("<script>alert('Registro NO realizado unu')</script>");
                out.println("<script>window.location='index.jsp'</script>");
            }
        %>
    </body>
</html>