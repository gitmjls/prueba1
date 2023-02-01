<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>JSTL Básico c:if</title>
</head>
<body>
	<h1>Formulario</h1>


	<form action="procesoIf.jsp" method="post">
		<table cellspacing="3" cellpadding="3" border="1">
			<tr>
				<td align="right">Nombre:</td>
				<td><input type="text" name="nombre"></input></td>
			</tr>
			<tr>
				<td align="right">Apellidos:</td>
				<td><input type="text" name="apellidos"></input></td>
			</tr>


		</table>

		<input type="submit" value="Enviar"></input>
	</form>
	<c:if test="${not empty param.error}">
		<strong><font color='red'>Error!</font></strong>
			<c:out value="${param.error}" />				
	</c:if>
</body>
</html>