<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*,java.sql.*,clase.com.jsptags.Empleado"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>función split</title>

</head>
<body>
	<!-- en un set tenemos el resultado de extraer un empleado de la BD-->
	<p>Uso de la función split</p>
	<c:set var="datos" value="luis, Gómez, jefe ventas, 4400"/>
	<c:set var="datosArray" value="${fn:split(datos,',')}"/>
	<input type="text" value="${datosArray[0]}"> </input>
	<input type="text" value="${datosArray[1]}"> </input>
	<input type="text" value="${datosArray[2]}"> </input>
	<input type="text" value="${datosArray[3]}"> </input>
</body>
</html>