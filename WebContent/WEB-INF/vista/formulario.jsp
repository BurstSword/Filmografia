<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
	.thead{
		color: #fff;
		background-color:#73c7ae;
	}
	.btn{
		color: #fff;
		background-color:#73c7ae;
		border: 0px solid;
	}
</style>
<title>Peliculas</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: lightblue">
		<a href="paginaPrincipal" class="text-dark" style="font-size: 25px;">Volver</a>

		<div class="container">
			<h1 class="text-center">Cine Güeno 2.0</h1>

		</div>
	</nav>
                <div class="container">
                <h1 class="text-center">Peliculas</h1>
                </div>
                <div class="container card col-md-5 justify-content-center">
                <f:form action="guardarPelicula" modelAttribute="pelicula" method="POST">
			
			<f:hidden path="id" />
			
			<div class="form-group">
				<label>Titulo:</label>
				<f:input path="titulo" class="form-control" required="required"></f:input>
			</div>
			<div class="form-group">
				<label>Director:</label>
				<f:input path="director" class="form-control" required="required"></f:input>
			</div>
			<div class="form-group">
				<label>Fecha: (Formato yyyy:mm:dd hh:mm:ss)</label>
				<f:input path="fecha" pattern="^([0-9]{4})-([0-1][0-9])-([0-3][0-9])\s([0-1][0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$" class="form-control" required="required"></f:input>
			</div>

			<input class="btn btn-success" type="submit" value="Guardar pelicula">

		</f:form>
                </div>

</body>
</html>