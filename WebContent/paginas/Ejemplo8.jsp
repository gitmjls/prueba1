<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!int valor = 0;%>
<%--Declarando variable tipo int--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ejemplo8</title>
</head>
<body>
	<h1>Tratamiento de errores con c:catch</h1>
	
	<form>
		<input type="text" name="parametro" />
		<input type="submit" value="enviar" />
	</form>
	
	<c:catch var="error">
		<%  
	   		if (request.getParameter("parametro")!=null)
	   			valor = Integer.parseInt(request.getParameter("parametro")); 
		%> 
	</c:catch>
	<c:if test="${not empty error}">
		<strong>Se produjo un error:</strong> ${error} <br>
	</c:if>
	<c:if test="${valor!=0 && empty error}">
		<strong>Valor recibido: <%out.print(valor);	%><c:out value="${valor}" /></strong> <br>
	</c:if>
	
	<p>formulario que envía una cadena para parsearla a un Integer </p>
	
</body>
</html>