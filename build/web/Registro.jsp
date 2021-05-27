<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuario</title>
         <style>
body {
  background-image: url('https://wallpaperaccess.com/full/749799.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
    </head>
    
        <center>

    <body>
       <!-- Registro en la App -->
        <h1>Favor de Completar el Registro</h1>
        <form action="Cotrolador5" methodo="POST">
            <table>      
                <tr>
                <td>Usuario</td><td><input type="text" name="usuario"/></td>
                </tr>
                <tr>
                <td>Contraseña</td><td><input type="text" name="clave"/></td>
                </tr>                               
                <tr>
                <td>Nombre Completo</td><td><input type="text" name="nombre"/></td>
                </tr>
                <tr>
                <td>Edad</td><td><input type="text" name="edad"/></td>
                </tr>                
                <tr>
                <td>Sexo</td><td><input type="text"  name="sexo"/></td>
                </tr>               
                <tr>
                <td>Correo Electronico</td><td><input type="text" name="sexo"/></td>
                </tr>               
                <tr>
                <td>Peso</td><td><input type="text"  name="peso"/></td>
                </tr>               
                <tr>
                <td>Estatura</td><td><input type="text"  name="estatura"/></td>
                </tr>                             
                <%
                   if(request.getAttribute("flag")!=null)
                   {
                       out.print("Tu estatura tiene que ser mayor a 1 metro y menor de 2.5 metros, la edad minima de uso del programa son 15 años");
                   }
                %>
                <tr>
                    <td><button type="submit">Registrar</button></td>
                </tr>                      
            </table>
        </form>
        </center>
    </body>
</html>
