
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestor Dietas</title>
    </head>
    <body>
        
        <!-- DESPLEGABLE DE DIETAS -->
        <form id="form1" name="form1" method="post" action="Controlador?opcion=SeleccionarDieta"> 
            <select name="dieta">    
                <option value="" selected="selected">Selecciona dieta</option>
                <option value="desayuno">Desayuno</option>
                <option value="ensalada">Ensalada</option>
            </select>
            <input type="submit" value="Aceptar" name="aceptar"/>
        </form>
        
        
        <!-- TABLA DE ALIMENTOS DE LA DIETA SELECCIONADA -->
        
            
            <form id="form2" name="form2" method="post" action="Controlador?opcion=EditarAlimentos"> 
            
            <table border=0 cellpadding='4' cellspacing='4'>
                <tr bgcolor=#d0d0d0 align="right" valign="baseline">
                    <th>Id</th><th>Nombre</th><th>Calorias</th><th>Cantidad</th><th></th>   
                </tr>
                <c:forEach var="aux" items="${alimentos}" >
                    <tr bgcolor=#d0d0d0 align="right">
                        <td>${aux.getIdAlimento()}</td>
                        <td>${aux.getNombre()}</td>
                        <td>${aux.getCalorias100()}</td>
                        <td><input type="text" name="${aux.getIdAlimento()}" value="${aux.getCantidad()}"></td>
                        <td><input type="checkbox" name="marcados" value="${aux.getIdAlimento()}"></td>
                    </tr>
                </c:forEach>
            </table>
                <input type="submit" value="Enviar" name="enviar"/>
            </form>
            
            
            <!-- TOTAL DE CALORIAS DE ALIMENTOS SELECCIONADOS -->
            <c:if test="${caloriasTotal!=null}">
                <p>Calculo: ${caloriasTotal} cal</p>
            </c:if>
                
      
                
        <a href="index.html"><p>Volver</p></a>
    </body>
</html>
