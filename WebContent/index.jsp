<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">

<link href="css/bootstrap.css" rel="stylesheet" />

<title>Test Methods</title>
</head>
<body>
<br>
	<%if (!(request.getAttribute("msg") == null)) {	%>
	<div class="col-sm-6">
			<div class="alert alert-primary" role="alert">
			<%=request.getAttribute("msg")%> </div></div>
	<%}	%>

	<form action="ServOla" method="post">
		<br>

		<div class="col-sm-3">
			<div class="form-group">
				<label for="descricao">Descricao:</label> <input type="text"
					class="form-control" name="descricao" id="descricao" />
			</div>
			<input type="submit" class="btn btn-info" name="Enviar" />
		</div>
	</form>

</body>
</html>