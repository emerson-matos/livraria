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
					<th scope="col" style="display: none;">ID do Exemplar</th>
					<th scope="col">Disponível</th>
					<th scope="col">Nome do Livro</th>
					<th scope="col">Nome do Autor</th>					
					<th scope="col">Alugar</th>
					<th scope="col">Editar</th>
					<th scope="col">Remover</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${exemplares}" var="exemplares">
					<tr>
						<td style="display:none;">${exemplares.idexemplar}</td>
						<td>${exemplares.disponivel == true? "Sim":"Não"}</td>
						<td>${exemplares.livro.titulo}</td>
						<td>${exemplares.livro.autor.nome}</td>
						<td><a href="/alugarExemplar/${exemplares.idexemplar}"
							class="btn btn-primary ">Alugar</a></td> 
						 <td><a href="/editarExemplar/${exemplares.idexemplar}"
							class="btn btn-primary ">Editar</a></td>
						<td><a href="/removerExemplar/${exemplares.idexemplar}"
							class="btn btn-secondary ">Remover</a></td> 
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


	
		<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>
	