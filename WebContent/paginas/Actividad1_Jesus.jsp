<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="clase.com.jsptags.Corredor" import="java.sql.*"%>
<%@ page import="java.util.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	List<Corredor> c = new ArrayList<Corredor>();
	String dorsal, nombre, apellidos, carrera;
	double marca;
	Class.forName("com.mysql.jdbc.Driver");
	try{
		java.sql.Connection miConexion = 
		java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectojsp", "usuario","usuario");
		Statement st = miConexion.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM CORREDORES ORDER BY marca");
		while(rs.next()){
			dorsal=rs.getString("dorsal");
			nombre=rs.getString("nombre");
			apellidos=rs.getString("apellidos");
			carrera=rs.getString("carrera");
			marca=rs.getDouble("marca");
			Corredor nuevo = new Corredor(dorsal, nombre, apellidos, marca, carrera);
			c.add(nuevo);
		}
	}catch(Exception ex){
		out.println("Ocurrio un error");
	}
	
	pageContext.setAttribute("losCorredores", c);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<form action="Actividad1_Jesus.jsp" method="post">
		<select name="carreras">
			<option>Media Sevilla</option>
			<option>Maraton Sevilla</option>
		</select>
		<input type="submit" value="enviar"></input>
	</form>
	
	<table border="1">
		<tr>
			<th>Dorsal</th>
			<th>Nombre</th>
			<th>Apellidos</th>
			<th>Marca</th>
			<th>Carrera</th>
		</tr>
		<c:forEach var="elem" items="${losCorredores}">
			<tr>
				<c:if test="${elem.carrera==param.carreras}">
					<td>${elem.dorsal}</td>
					<td>${elem.nombre}</td>
					<td>${elem.apellidos}</td>
					<td>${elem.marca}</td>
					<td>${elem.carrera}</td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	
	<c:if test="${param.carreras=='Media Sevilla'}">
		<h2>${param.carreras} será en Noviembre</h2>
	</c:if>
	
	<c:if test="${param.carreras=='Maraton Sevilla'}">
		<h2>${param.carreras} será en Abril</h2>
	</c:if>
</body>
</html>






