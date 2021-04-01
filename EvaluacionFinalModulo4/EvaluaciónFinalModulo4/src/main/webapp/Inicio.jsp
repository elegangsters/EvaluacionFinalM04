<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio</title>

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

	<div class="margen">
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
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="Inicio">Inicio</a></li>
						<li class="nav-item"><a class="nav-link" class="nav-link"
							href="Contacto">Contacto</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Crear </a>
							<ul class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
								<li><a class="dropdown-item" href="CrearCapacitacion">Crear
										Capacitación</a></li>
								<li><a class="dropdown-item" href="CrearUsuario">Crear
										Usuario</a></li>
							</ul>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarDropdownMenuLink" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Listar </a>
							<ul class="dropdown-menu"
								aria-labelledby="navbarDropdownMenuLink">
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
	</div>
	
	<div class="centrar">
        <h2 class="titulo">Nosotros</h2>
    </div>

    <div class="container">
        <ol class="centrar">
            <li class="bloque"> Cuál es el objetivo del sistema de información.</li>
            <p>
                Mejorar la planificación de actividades y control de ejecución que se llevan a
                cabo día a día en empresas de asesorías en prevención de riesgo. Así como permitir
                una optima gestión, seguridad, y disponibilidad de información para la empresa 
                y sus clientes. 
            </p>
            <li class="bloque"> Quienes deberían usarlo.</li>
            <p>
                Esta pagina web esta diseñada para empresas de asesorias en control de calidad. 
                Sin embargo puede ser útil para cualquier empresas que requiera un sistema que 
                les permita administrar y controlar toda la información  de labores y actividades
                realizadas por sus colaboladores. 
            </p>
            <li class="bloque"> Qué procesos considera la plataforma actualmente.</li>
            <p>
                En esta primera versión beta se puede navegar por las diversas paginas presentadas
                en el menú, pudiendo ver tranquilamente listas de usuarios y capacitaciones.
            </p>
        </ol>
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