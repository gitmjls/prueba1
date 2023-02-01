<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Solicitud</title>
</head>
<body>
	<h1>Solicitud</h1>
	<p>Despues de introducir tus datos pulsa el botón "enviar"</p>
	<form action="procesa7.jsp">
				
		<table cellspacing="5" cellpadding="5" border="0">
			<tr>
				<td align="center">Selecciona los lenguajes que conoces:</td>
				
			</tr>
			<tr>
				<td><select name="lenguaje" >
						<option selected>Java   </option>
						<option>C++   </option>
						<option>Perl  </option>
						<option>C#    </option>
						</select>
				</td>
				
			</tr>
		</table>
		<input type="reset" value="Borrar"> <input type="submit" value="Enviar"/>
	</form>
	<p><a href="../index.html">volver..</a></p>
</body>
</html>