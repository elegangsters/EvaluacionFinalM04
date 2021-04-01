<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CrearUsuario</title>

<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<script>
<%@include file="js/script.js"%>
</script>
<script>
<%@include file="js/script2.js"%>
</script>

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
	
	<!--Logo IdeaConsultores -->
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
						class="nav-link  active dropdown-toggle"
						id="navbarDropdownMenuLink" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Crear </a>
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
	<h2 class="centrar">Creando un nuevo Usuario</h2>
	
	<!--formulario -->

	<div class="container">
		<form action="SubirUsuario" method="post" class="row g-3 needs-validation" id="crearUsuario">

			<div class="col-6">
				<label class="form-label" id="inputGroup-sizing-default">RUN</label>
				<input name="uRun" type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>

			<div class="col-6">
				<label class="form-label" id="inputGroup-sizing-default">Nombre</label>
				<input name="usuNombre" type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-lg">
			</div>

			<div class="col-6">
				<label class="form-label" id="inputGroup-sizing-default">Apellido</label>
				 <input name="usuApellido" type="text" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-lg">
			</div>

			<div class="col-3">
				<label class="form-label" id="inputGroup-sizing-default">Fecha de Nacimiento</label>
				<input name="usuFechaNacimiento" type="text"
					class="form-control" aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-lg">
			</div>
			
			<div class="col-12">
				<label class="form-label" id="inputGroup-sizing-default">Tipo de Usuario</label>
				<select name="usuTipo" class="form-select" id="validationTooltip04" required>
      			<option selected disabled value="" id="2">Seleccione...</option>
      			<option id="1">Cliente</option>
                <option>Administrativo</option>
                <option>Funcionario</option>
                 </select>
			</div>
			
		<div class="container row mt-3" id="divInputCliente" style= "Display:none;">
			<div class="col-4 mt-2">
      			<label for="telefonoCliente" class="form-label">Teléfono del cliente</label>
     			<input type="text" class="form-control" id="telefonoCliente" name="telefonoCliente">
    		</div>
    		<div class="col-4 mt-2">
      			<label for="afpCliente" class="form-label">AFP del cliente</label>
      			<input type="text" class="form-control" id="afpCliente" name="afpCliente">
    		</div>
   			<div class="col-4 mt-2">
      			<label for="sisSalud" class="form-label">Sistema de salud del cliente</label>
      			<input type="text" class="form-control" id="sisSalud" name="sisSalud">
    		</div>
    		<div class="col-8 mt-2">
      			<label for="direCliente" class="form-label">Direccion del cliente</label>
      			<input type="text" class="form-control" id="direCliente" name="direCliente">
    		</div>
    		<div class="col-4 mt-2">
      			<label for="edadCliente" class="form-label">Edad del cliente</label>
      			<input type="text" class="form-control" id="edadCliente" name="edadCliente">
    		</div>
		</div>
		
		<div class="container row mt-3" id="divInputPro" style= "Display:none;">
			<div class="col-4 mt-2">
      			<label for="telefonoPro" class="form-label">Teléfono del profesional</label>
     			<input type="text" class="form-control" name="telefonoPro">
    		</div>
		    <div class="col-4 mt-2">
		    	<label for="tituloPro" class="form-label">Título del profesional</label>
		        <input type="text" class="form-control" name="tituloPro">
		    </div>
		    <div class="col-4 mt-2">
		    	<label for="proyectoPro" class="form-label">Proyecto en el que se desempeña</label>
		        <input type="text" class="form-control" name="proyectoPro">
		    </div>
		</div>
		
		<div class="container row mt-3" id="divInputAdm" style= "Display:none;">
      		<div class="col-6 mt-2">
      			<label for="emailAdm" class="form-label">Email</label>
        		<input type="text" class="form-control" name="emailAdm">
      		</div>
      		<div class="col-6 mt-2">
      		    <label for="areaAdm" class="form-label">Área del administrativo</label>
        		<input type="text" class="form-control" name="areaAdm">
      		</div>
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
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>

</body>
</html>