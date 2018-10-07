<%-- 
    Document   : registrarusuarios
    Created on : 2/10/2018, 05:48:37 PM
    Author     : chu_c
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inicio</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css.css">
    </head>
    <body>
        <header>
            <h1 align="center">¡Registrate aquí!</h1>
            <a href="index.jsp" class="ey">Regresar</a>
        </header>
        <nav></nav>
        <section>
            <article>
                <div class="row"> 
                    <form method="post" action="jsp/Registro.jsp">
                        <span>
                            <input type="text" name="nombre" id="nombre" class="slide-up">
                            <label for="nombre">Nombre</label>
                        </span>
                        <br>
                        <span>
                            <input type="text" name="apellidoPaterno" id="apellidoPaterno" class="slide-up">
                            <label for="apellidoPaterno">Apellido Paterno</label>
                        </span>
                        <br>
                        <span>
                            <input type="text" name="apellidoMaterno" id="apellidoMaterno" class="slide-up">
                            <label for="apellidoMaterno">Apellido Materno</label>
                        </span>
                        <br>
                        <span>
                            <input type="text" name="telefono" id="telefono" class="slide-up">
                            <label for="telefono">Telefono</label>
                        </span>
                        <br>
                        <span>
                        <input type="text" name="nombreusu" id="nombreusu" class="slide-up">
                        <label for="nombreusu">Usuario</label>
                        </span>
                        <br>
                        <span>
                        <input type="email" name="correo" id="correo" class="slide-up">
                        <label for="correo">Correo</label>
                        </span>
                        <br>
                        <span>
                        <input type="password" name="contra" id="contra" class="slide-up">
                        <label for="contra">Contraseña</label>
                        </span>
                        <br>
                        <span>
                        <input type="password" name="contra2" class="slide-up">
                        <label for="contra2">Repetir contraseña</label>
                        </span>
                        <br>
                        <input type="submit" value="Registrarme" class="nop">
                    </form>
                </div> 
            </article>
        </section>
    </body>
</html>
