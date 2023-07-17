<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MIS RESERVAS</title>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<main class="p-4 d-flex flex-column">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>ID RESERVAS</th>
					<th>NOMBRE DE USUARIO</th>
					<th>NOMBRE</th>
					<th>CORREO ELECTRÓNICO</th>
					<th>NÚMERO DE AULA</th>
					<th>NOMBRE DE AULA</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${reservas}" var="reserva">
					<tr>
						<td>${reserva.idreserva}</td>
						<td>${reserva.usuario.username}</td>
						<td>${reserva.usuario.nombre}</td>
						<td>${reserva.usuario.email}</td>
						<td>${reserva.aula.numaula}</td>
						<td>${reserva.aula.nombre}</td>
						<td><a class="btn btn-success" href="reserva?action=liberar&idreserva=${reserva.idreserva}" role="button">LIBERAR</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
</body>
</html>