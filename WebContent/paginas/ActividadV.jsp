<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="clase.com.jsptags.Corredor" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Recogida de Datos</title>
</head>
<body>
	<form action="ActividadV.jsp" method="post">
		<select name="opcion" id="opcion">
			<option></option>
			<option>Maraton Sevilla</option>
			<option>Media Sevilla</option>
		</select>
		<input type="submit" value="Enviar" />
	</form>
	<br />
	<br />
	
	<%
	List<Corredor> corredores = new ArrayList<>();
	// CONEXION CON LA BASE DE DATOS
	Class.forName("com.mysql.jdbc.Driver");
	try{
		String dorsal, nombre, apellido;
		Double marca;
		
		String opt = request.getParameter("opcion");
		
		System.out.println("opcion :"+opt);
		Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectojsp","usuario","usuario");
		String sql="SELECT dorsal, nombre, apellidos, marca FROM CORREDORES WHERE carrera = ?";
		
		
		PreparedStatement c_preparada = miConexion.prepareStatement(sql);
		c_preparada.setString(1, opt);
		
		ResultSet rs = c_preparada.executeQuery();
		
		while(rs.next()){
			dorsal = rs.getString("dorsal");
			nombre = rs.getString("nombre");
			apellido = rs.getString("apellidos");
			marca = rs.getDouble("marca");
			
			Corredor corredor = new Corredor(dorsal, nombre, apellido, marca);
			System.out.println("el corredor-:"+corredor);
			corredores.add(corredor);
		}
		System.out.println("Corredores :"+corredores);
		pageContext.setAttribute("corr", corredores);
		pageContext.setAttribute("opt", opt);
		
	}catch(Exception e){
		out.print("Error --> " + e);
	}
	%>
	<c:if test="${not empty corr}">
		<table border="2">
		<tr>
			<th>Dorsal</th>
			<th>Nombre</th>
			<th>Apellidos</th>
			<th>Marca</th>
		</tr>
		<c:forEach var="c" items="${corr}">
	    	<tr>
	    		<td>${c.dorsal}</td>
	    		<td>${c.nombre}</td>
	    		<td>${c.apellidos}</td>
	    		<td>${c.marca}</td>
	    	</tr>
	    </c:forEach>
		</table>
	</c:if>
	
	<br />
	<c:if test="${opt eq 'Maraton'}">
		<c:out value="La Maratón empieza en Octubre" />
	</c:if>
	<c:if test="${opt eq 'Media Maraton'}">
		<c:out value="La Media Maratón empieza en Junio" />
	</c:if>
</body>
</html>