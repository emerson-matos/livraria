<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>${livro.titulo}</title>

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
		<jsp:param name="header" value="" />
	</jsp:include>
	<div class="col-sm" style="text-align: center">
		<img src="${livro.srcImagemCapa}"
			style="margin-right: 5px; margin-top: 3%; max-width: 250px;">
	</div>
	<div class="col-sm">
		<form action="/salvarEdicaoLivro" method="post">
			<div class="container">
				<div class="form-group" style="display: none;">
					<label for="idlivro" class="control-label">Id</label> <input
						type="text" class="form-control" id="idlivro" name="idlivro"
						value="${livro.idlivro}">
				</div>

				<div class="form-group">
					<label for="titulo" class="control-label">Título Original</label> <input
						type="text" class="form-control" id="titulo" name="titulo"
						value="${livro.titulo}" required>
				</div>

				<div class="form-group">
					<label for="autor" class="control-label">Autor</label> <input
						class="form-control" id="autor" name="autor" placeholder="Autor" value="${livro.autor.nome}"
						required />
				</div>


				<div class="form-group">
					<label for="edicao" class="control-label">Edição</label> <input
						type="text" class="form-control" id="edicao" name="edicao"
						value="${livro.edicao}" required>
				</div>

				<div class="form-group">
					<label for="ano" class="control-label">Ano</label> <input
						type="text" class="form-control" id="ano" name="ano"
						value="${livro.ano}" required>
				</div>

				<div class="form-group">
					<label for="idioma" class="control-label">Idioma</label> <input
						type="text" class="form-control" id="idioma" name="idioma"
						value="${livro.idioma}" required>
				</div>

				<div class="form-group">
					<label for="isbn" class="control-label">ISBN</label> <input
						type="text" class="form-control" id="isbn" name="isbn"
						value="${livro.isbn}" required>
				</div>

				<div class="form-group">
					<label for="srcImagemCapa" class="control-label">Caminho da
						Imagem</label> <input type="text" class="form-control" id="srcImagemCapa"
						name="srcImagemCapa" value="${livro.srcImagemCapa}" required>
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-primary">Salvar</button>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		$('#autor').autocomplete({
			source : function(request, response) {
				$.ajax({
					url : 'http://localhost:8080/autores/findByName/',
					type : 'POST',
					dataType : 'json',
					data : {
						autor : request.term,
					},
					success : function(data) {
						response($.map(data, function(item) {
							console.log(item['nome'])
							return {
								label : item['nome'],
								value : item['id']
							}
						}));
					}
				});
			}
		});
	</script>
	<jsp:include page="footer.jsp">
		<jsp:param name="footer" value="" />
	</jsp:include>
</body>
</html>

