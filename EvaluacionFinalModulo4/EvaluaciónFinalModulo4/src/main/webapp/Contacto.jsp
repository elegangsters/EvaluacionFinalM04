<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contacto</title>

<style type="text/css">
<%@ include file ="/CSS/Estilo.css"%>
</style>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

</head>
<body>
<body>
	<!--Imagen Human Idea -->
	<div>
		<img
			src="https://evaluaciones.alineosoft.com/gentelella-master/production/images/logo-humanidea.png">
	</div>

	<!--Menú -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" aria-current="page" href="Inicio">Inicio</a></li>
					<li class="nav-item"><a class="nav-link active" class="nav-link" href="Contacto">Contacto</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Crear </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="CrearCapacitacion">Crear
									Capacitación</a></li>
							<li><a class="dropdown-item" href="CrearUsuario">Crear
									Usuario</a></li>
						</ul>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Listar </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="ListarCapacitacion">Listar
									Capacitación</a></li>
							<li><a class="dropdown-item" href="ListarUsuarios">Listar
									Usuario</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="Login">Login</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!--Título -->
	<h2 class="centrar">Contáctanos</h2>
	
	<h4 class ="centrar">Ingresa tus datos y nos pondremos en contacto contigo:</h4>
	
	<!--formulario -->

	<div class="formulario">
		<form action="ConsolaContacto" method="post">

			<div class="input-group input-group-lg mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default">Nombre</span>
				<input name="nombre" type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>

			<div class="input-group input-group-lg mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default">Correo</span>
				<input name="correo" type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-lg">
			</div>

			<div class="input-group input-group-lg mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default">Telefono</span>
				 <input name="telefono" type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-lg">
			</div>

			<div class="input-group input-group-lg mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default">Mensaje</span>
				 <input name="mensaje" type="text"
					class="form-control" aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-lg">
			</div>

			<div class="centrar">
				<button type="submit" class="btn btn-dark">Enviar</button>
			</div>
		</form>
	</div>
	

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
		integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"
		integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc"
		crossorigin="anonymous"></script>
		
</body>
</html>