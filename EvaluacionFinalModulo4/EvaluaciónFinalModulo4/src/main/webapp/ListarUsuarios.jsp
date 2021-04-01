<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Usuario"%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ListarUsuarios</title>

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

	<!--Logo HumanIdea -->
	<div>
        <img src="https://evaluaciones.alineosoft.com/gentelella-master/production/images/logo-humanidea.png">
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
						class="nav-link  active dropdown-toggle" href="#"
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
	<h2 class="centrar">Lisado de Usuarios</h2>

	<%
	List<Usuario> tabla = (List<Usuario>)request.getAttribute("listaUsuarios");
	%>

	<div class="centrar">
		<table class="table">
			<thead>
					<tr>
						<th scope="col">Run</th>
						<th scope="col">Nombre</th>
						<th scope="col">Apellido</th>
						<th scope="col">Fecha De Nacimiento</th>
						<th scope="col">Tipo</th>
						<th scope="col">Editar</th>
					</tr>
				</thead>
				<tbody>
					<%for (Usuario dato : tabla) {%>
					<tr>
						<td><%=dato.getuRun()%></td>
						<td><%=dato.getUsuNombre()%></td>
						<td><%=dato.getUsuApellido()%></td>
						<td><%=dato.getUsuFechaNacimiento()%></td>
						<td><%=dato.getUsuTipo()%></td>
						<td><a class="btn btn-dark" href="<%=dato.getUsuTipo()%>" role="button">Editar</a><td/>
					</tr>
					<%}%>
				</tbody>	
		</table>	
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