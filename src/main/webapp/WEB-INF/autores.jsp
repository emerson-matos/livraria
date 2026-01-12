<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />

	<title>Lista de Autores</title>
	
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
		
	
	<div class="container">
		<div class="page-header text-center mb-5 fade-in">
			<h1><i class="bi bi-person-fill me-3"></i>Autores</h1>
			<p class="lead mb-0">Gerencie os autores do acervo</p>
		</div>
		<div class="main">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col"><i class="bi bi-person me-2"></i>Nome do Autor</th>
							<th scope="col"><i class="bi bi-globe me-2"></i>Nacionalidade</th>
							<th scope="col" class="text-center"><i class="bi bi-gear me-2"></i>Ações</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${autores}" var="autores">
							<tr class="fade-in">
								<td><strong>${autores.nome}</strong></td>
								<td>${autores.nacionalidade}</td>
								<td class="text-center">
									<div class="d-flex gap-2 justify-content-center">
										<a href="/editarAutor/${autores.idautor}" class="btn btn-success btn-sm">
											<i class="bi bi-pencil me-1"></i>Editar
										</a>
										<a href="/removerAutor/${autores.idautor}" class="btn btn-danger btn-sm">
											<i class="bi bi-trash me-1"></i>Remover
										</a>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>
	
</body>
</html>


	