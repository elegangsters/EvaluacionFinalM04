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
    
    <!--Men� -->

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
										Capacitaci�n</a></li>
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
										Capacitaci�n</a></li>
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
            <li class="bloque"> Cu�l es el objetivo del sistema de informaci�n.</li>
            <p>
                Mejorar la planificaci�n de actividades y control de ejecuci�n que se llevan a
                cabo d�a a d�a en empresas de asesor�as en prevenci�n de riesgo. As� como permitir
                una optima gesti�n, seguridad, y disponibilidad de informaci�n para la empresa 
                y sus clientes. 
            </p>
            <li class="bloque"> Quienes deber�an usarlo.</li>
            <p>
                Esta pagina web esta dise�ada para empresas de asesorias en control de calidad. 
                Sin embargo puede ser �til para cualquier empresas que requiera un sistema que 
                les permita administrar y controlar toda la informaci�n  de labores y actividades
                realizadas por sus colaboladores. 
            </p>
            <li class="bloque"> Qu� procesos considera la plataforma actualmente.</li>
            <p>
                En esta primera versi�n beta se puede navegar por las diversas paginas presentadas
                en el men�, pudiendo ver tranquilamente listas de usuarios y capacitaciones.
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