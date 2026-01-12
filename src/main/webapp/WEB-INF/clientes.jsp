<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
	<title>Lista de Clientes</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link href="/resources/site.css" rel="stylesheet">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	
</head>
<body>
	<jsp:include page="header.jsp">
	    <jsp:param name="header" value=""/>
	</jsp:include>
		
	
	<div class="container">
		<table class="table table-striped ">
			<thead>
				<tr>
					<th scope="col">Nome do Cliente</th>
					<th scope="col">CPF</th>
					<th scope="col">E-mail</th>
					<th scope="col">Editar</th>
					<th scope="col">Remover</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${clientes}" var="clientes">
					<tr>
						<td>${clientes.nome}</td>
						<td>${clientes.cpf}</td>
						<td>${clientes.email}</td>
						<td><a href="/editarCliente/${clientes.id}"
							class="btn btn-primary ">Editar</a></td>
						<td><a href="/removerCliente/${clientes.id}"
							class="btn btn-secondary ">Remover</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>
	
</body>
</html>


	