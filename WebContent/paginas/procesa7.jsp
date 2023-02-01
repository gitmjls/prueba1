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
	<h1>Datos recibidos</h1>
	<c:choose>
		<c:when test="${param.lenguaje == 'Java'}">
			<p>El rey de los lenguaje orientados a objetos</p>
		</c:when>
		<c:when test="${param.lenguaje == 'C++'}">
			<p>Ideal para aprender</p>
		</c:when>
		<c:when test="${param.lenguaje == 'Perl'}">
			<p>Lenguaje de scripting muy potente</p>
		</c:when>
		<c:otherwise>
			<p>No se seleccionó ninguno</p>
		</c:otherwise>
	</c:choose>
</body>
</html>