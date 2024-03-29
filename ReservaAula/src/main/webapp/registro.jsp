<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>REGISTRO</title>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<main class="p-4 d-flex flex-column align-items-center">
		<div class="card" style="width: 40vw;">
			<div class="card-body">
				<h3 class="text-center">ALTA USUARIO</h3>
				<form method="post" class="pb-4" action="usuario">
					<label for="username">NOMBRE DE USUARIO</label>
					<input type="text" class="form-control" id="username" name="username" placeholder="Usuario" required /><br>
					<label for="password">CONTRASEÑA</label>
					<input type="password" class="form-control" id="password" name="password" placeholder="Password" required /> <br>
					<label for="nombre">NOMBRE:</label>
					<input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required /><br>
					<label for="email">CORREO ELECTRÓNICO</label>
					<input type="text" class="form-control" id="email" name="email" placeholder="Email" required /><br>
					<label for="puesto">PUSTO DE TRABAJO</label>
					<input type="text" class="form-control" id="puesto" name="puesto" placeholder="Puesto" required /><br>
					<label for="perfil">PERFIL</label>
					<select class="form-control" id="perfil" name="perfil">
						<option value="normal">NORMAL</option>
						<option value="administrador">ADMINISTRADOR</option>
					</select>
					<input type="hidden" name="action" value="registro" />
					<div class="p-4 d-flex flex-row justify-content-around align-items-center">
						<input type="submit" class="btn btn-primary" value="Registro" />
					</div>
				</form>
				<c:if test="${message != null}">
					<div class="alert alert-danger text-center">
						${message}
					</div>
				</c:if>
			</div>
		</div>
	</main>
</body>
</html>