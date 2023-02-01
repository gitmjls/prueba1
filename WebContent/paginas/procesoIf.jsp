<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>proceso</title>
</head>
<body>
	<h1>Recepción de parámetros</h1>
	<c:if test="${empty param.nombre}">
		<c:redirect url="Ejemplo6.jsp">
			<c:param name="error" value="Nombre obligatorio" />
		</c:redirect>
	</c:if>
	<c:if test="${empty param.apellidos}">
		<c:redirect url="Ejemplo6.jsp">
			<c:param name="error" value="Apellidos obligatorios" />
		</c:redirect>
	</c:if>
	<h2>Datos recibidos</h2>

	<p>Nombre: <strong><c:out value="${param.nombre}" /></strong></p>
	<p>Apellido: <strong><c:out value="${param.apellidos}" /></strong></p>
	

	<h2>Bienvenido ${param.nombre} ${param.apellidos}</h2>
</body>
</html>