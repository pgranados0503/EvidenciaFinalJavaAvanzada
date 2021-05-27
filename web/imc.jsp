<%@page import="modelo.Calcular"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora de Indice de Masa Corporal</title>
        
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
        <h1>Bienvenido</h1>
    </center>
      <!-- Datos sobre el IMC -->
        <p>El índice de masa corporal (IMC) es una razón matemática que asocia la masa y la talla de un individuo, ideada por el estadístico belga Adolphe Quetelet, por lo que también se conoce como índice de Quetelet.</p>
        <p>El IMC también puede calcularse a partir de tablas o gráficas que muestran el IMC en función de la masa y la altura usando líneas de contorno para distintas categorías.El IMC es un criterio ampliamente aceptado, pero no es exacto. Clasifica a las personas en infra peso, peso normal, sobrepeso y obesidad, basándose exclusivamente en la masa del individuo y su altura. No tendría en cuenta la edad, el sexo, el porcentaje de grasa corporal o la masa muscular. Incluso la categorización aún hoy es objeto de debate sobre dónde se deberían colocar esos límites.</p>
        <p>Se acepta comúnmente los siguientes: bajo peso por debajo de 18,5 kg/m², peso normal: 18,5 a 25, sobrepeso: 25 a 30, obesidad: más de 30.El IMC por debajo de 20 y sobre 25 ha sido asociado con mayor probabilidad de mortalidad, disminuyendo el riesgo entre 20-25. La prevalencia de sobrepeso y obesidad es mayor en América y menor en el Sureste Asiático, y es del doble en países con ingresos medios y altos que en países con ingresos bajos o muy bajos. </p>

           
     <!-- Formulario sobre el IMC -->
        
        <center>
            <form action="Controlador" methodo="POST">
            <table>
                 <tr>
                <td>Altura (Escribir en metros, 1.50, 1.65, 1.85)</td><td><input type="text" name="num1"/></td>
                </tr>
                <tr>
                <td>Peso (En kilogramos)</td><td><input type="text" name="num2"/></td>
                </tr>
                <tr>
                    <td><button type="submit">Calcular</button></td>
                </tr>
            </table>
            </form>
        </center>
        
     <center>
        <!-- En caso de ser altura ser irreal -->
           <%
                   if(request.getAttribute("flag")!=null)
                   {
                       out.print("Eres un alien? Como puedes medir mas de 2.5 metros ");
                   }
        %>
        
           
            <!-- Enter -->
           <p>  </p>
           
           <!-- Print de IMC -->
            <%
                Calcular obj=new Calcular();
                obj=(Calcular) request.getAttribute("ObjetoJava");
                if(obj!=null){
                    out.print("Tu IMC es de: ");
                    out.print(obj.getResultado());
                }
                        
            %>
           </center>
            <br>
            <br>
    </body>
    
    
    <img src="https://www.doctorjosevicenteferrer.com/wp-content/uploads/2013/10/tabla-IMC-624x411.png"/>
    </center
</html>
