<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
	<title>Editar Cliente</title>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link href="resources/site.css" rel="stylesheet">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	
</head>
<body>
	<jsp:include page="header.jsp">
	    <jsp:param name="header" value=""/>
	</jsp:include>
	

	<form action="/salvarEdicaoCliente" method="post" style="margin-top: 75px;">
		<div class="container">
			<div class="form-group">
				<input type="text" class="form-control" id="id" name="id"
					required value="${cliente.id}" style="display: none;">
			</div>
			<div class="form-group">
				<label for="nome" class="control-label">Nome do Cliente</label> <input
					type="text" class="form-control" id="nome" name="nome" required
					value="${cliente.nome}">
			</div>

			<div class="form-group">
				<label for="cpf" class="control-label">CPF</label>
				<input type="text" class="form-control" id="cpf"
					name="cpf" value="${cliente.cpf}" required>
			</div>
			<div class="form-group">
				<label for="idade" class="control-label">Idade</label>
				<input type="text" class="form-control" id="idade"
					name="idade" value="${cliente.idade}" required>
			</div>
			<div class="form-group">
				<label for="cpf" class="control-label">Endereco</label>
				<input type="text" class="form-control" id="endereco"
					name="endereco" value="${cliente.endereco}" required>
			</div>
			<div class="form-group">
				<label for="cpf" class="control-label">E-mail</label>
				<input type="text" class="form-control" id="email"
					name="email" value="${cliente.email}" required>
			</div>
					
			<div class="form-group">
				<!-- Submit Button -->
				<button type="submit" class="btn btn-primary">Salvar</button>
			</div>
		</div>
	</form>
	
	

	
</body>
</html>

<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>

	