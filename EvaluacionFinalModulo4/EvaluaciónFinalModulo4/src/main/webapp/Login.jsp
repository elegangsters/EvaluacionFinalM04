<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

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
	<!-- menú-->

	<div>
        <img src="https://evaluaciones.alineosoft.com/gentelella-master/production/images/logo-humanidea.png">
    </div>

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
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="Inicio">Inicio</a></li>
					<li class="nav-item"><a class="nav-link" href="Contacto">Contacto</a>
					</li>
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
					<li class="nav-item"><a class="nav-link active" href="Login">Login</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	

    <!-- Tabs Titles -->
    <div class="centrar">
        <h2 class="titulo">Accede a su sesión</h2>
    </div>
    
    <!-- Icon -->


	<div class="formulario">
		<!-- Icon -->
		<div class="imagen">
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxO3ItVhXkgB9wKHai7ITGUStWL16BNleY3EJqs3paiDKJIuXlzZhjuOuuteke309gmZw&usqp=CAU" />
		</div>

		<!-- Login Form -->
		<form action="ProcesaLogin" method="post">
		
			<div class="input-group input-group-lg mb-3">
				<span class="input-group-text" id="login">Usuario</span>
				<input name="login" type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>
				
			<div class="input-group input-group-lg mb-3">
				<span class="input-group-text" id="password">Password</span>
				<input name="login" type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>	
				
			<div class="centrar">
				<button type="submit" class="btn btn-dark">Ingresar</button>
			</div>	
				
			<!--  <input type="text" id="password"
				class="fadeIn third" name="login" placeholder="Password"> 
			<input
				type="submit" class="fadeIn fourth" value="Ingresar">-->
		
		</form>
	</div>
	
	<!-- Remind Passowrd -->
		<div class="centrar">
			<a class="underlineHover" href="#">Olvidaste tu password??</a>
		</div>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
		integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"
		integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc"
		crossorigin="anonymous"></script>
		
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</body>
</html>