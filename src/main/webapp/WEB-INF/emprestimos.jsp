<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
	<title>Exemplares</title>
	
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="/resources/site.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

</head>
<body>
	<jsp:include page="header.jsp">
	    <jsp:param name="header" value=""/>
	</jsp:include>
	<div class="container" >
		<div class="row">
			Quantidade disponivel para aluguel: ${disponivel}
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col" style="display: none;">ID do emprestimo</th>
					<th scope="col">Cliente</th>
					<th scope="col">Data de Emprestimo</th>
					<th scope="col">Data de Retorno</th>					
					<th scope="col">Livro</th>
					<th scope="col">Exemplar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${emprestimos}" var="emprestimos">
					<tr>
						<td style="display:none;">${emprestimos.idemprestimo}</td>
						<td>${emprestimos.cliente.nome}</td>
						<td>${emprestimos.datadoemprestimo}</td>
						<td>${emprestimos.dataderetorno}</td>
						<td>${emprestimos.exemplar.livro.nome}</td>
					 	<td>${emprestimos.exemplar.idexemplar}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


	
		<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>
	