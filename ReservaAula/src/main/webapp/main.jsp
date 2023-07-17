<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>INICIO</title>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<main class="p-4 d-flex flex-column">
		<form class="form-inline" method="post" action="aula">
			<input type="text" class="form-control" id="query" name="query" placeholder="Buscar aula" />
			<input type="hidden" name="action" value="listar" />
			<button type="submit" class="btn btn-info">BUSCAR</button>
		</form>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>NÚMERO DE AULA</th>
					<th>CAPACIDAD</th>
					<th>NOMBRE</th>
					<th>DESCRIPCIÓN</th>
					<th>ESTADO</th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${aulas}" var="aula">
					<tr>
						<td>${aula.numaula}</td>
						<td>${aula.capacidad}</td>
						<td>${aula.nombre}</td>
						<td>${aula.descripcion}</td>
						<td>
							<c:choose>
								<c:when test="${aula.estado == false}">
									LIBRE
								</c:when>
								<c:otherwise>
									RESERVADA
								</c:otherwise>
							</c:choose>
						</td>
						<td><a class="btn btn-primary" href="aula?action=ver&numaula=${aula.numaula}" role="button">VER DETALLE</a></td>
						<td>
							<c:if test="${aula.estado == false }">
								<a class="btn btn-success" href="aula?action=reservar&numaula=${aula.numaula}&idusuario=${user.idusuario}" role="button" onclick="return confirm('Se va a proceder a la reserva del aula. �Desea continuar?')">RESERVAR</a>
							</c:if>
						</td>
						<td>
							<c:if test="${user.perfil.equals('administrador')}">
								<a class="btn btn-danger" href="aula?action=eliminar&numaula=${aula.numaula}" role="button" onclick="return confirm('Se va a proceder a la eliminaci�n del aula. �Desea continuar?')">ELMINAR</a>
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
</body>
</html>