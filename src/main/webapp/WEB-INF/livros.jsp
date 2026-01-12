<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Lista de Livros</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="resources/site.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body>
	<jsp:include page="header.jsp">
	<jsp:param name="header" value="" />
	</jsp:include>

	<div class="container">
		<div class="page-header text-center mb-5 fade-in">
			<h1><i class="bi bi-book me-3"></i>Livros</h1>
			<p class="lead mb-0">Gerencie o acervo de livros</p>
		</div>
		<div class="main">
			<div class="card-columns">
				<c:forEach items="${livros}" var="livros">
					<div class="card fade-in" id="idCard_${livros.idlivro}">
						<div class="card-body text-center">
							<img class="card-img-top mb-3" src="${livros.srcImagemCapa}"
								style="max-width: 150px; height: 200px; object-fit: cover; border-radius: 8px;"
								alt="Capa do Livro - ${livros.titulo}"
								onerror="this.src='https://via.placeholder.com/150x200?text=Sem+Capa'">
							<h5 class="card-title">${livros.titulo}</h5>
							<p class="card-text">
								<ul class="list-group list-group-flush">
									<li class="list-group-item">
										<i class="bi bi-1-circle me-2 text-primary"></i>
										<strong>Edição:</strong> ${livros.edicao}
									</li>
									<li class="list-group-item">
										<i class="bi bi-calendar me-2 text-primary"></i>
										<strong>Ano:</strong> ${livros.ano}
									</li>
									<li class="list-group-item">
										<i class="bi bi-person me-2 text-primary"></i>
										<strong>Autor:</strong> ${livros.autor.nome}
									</li>
								</ul>
							</p>
							<div class="d-flex gap-2 justify-content-center flex-wrap">
								<a href="/exemplares/${livros.idlivro}" class="btn btn-primary btn-sm">
									<i class="bi bi-stack me-1"></i>Exemplares
								</a>
								<a href="/editarLivro/${livros.idlivro}" class="btn btn-success btn-sm">
									<i class="bi bi-pencil me-1"></i>Editar
								</a>
								<a href="/removerLivro/${livros.idlivro}" class="btn btn-danger btn-sm">
									<i class="bi bi-trash me-1"></i>Remover
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp">
	<jsp:param name="footer" value="" />
	</jsp:include>
</body>
</html>
