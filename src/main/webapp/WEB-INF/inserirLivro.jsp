<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Inserir Livro</title>

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

	<div class="main">
		<form action="/salvarLivro" method="post" modelAttribute="livro">
			<div class="container">
				<div class="form-group">
					<label for="titulo" class="control-label">Título</label> <input
						class="form-control" type="text" name="titulo"
						placeholder="Titulo do livro" required>
				</div>
				<div class="form-group">
					<label for="edicao" class="control-label">Edição</label> <input
						class="form-control" type="text" name="edicao"
						placeholder="Número da edição" required>
				</div>
				<div class="form-group">
					<label for="ano" class="control-label">Ano</label> <input
						class="form-control" type="text" name="ano"
						placeholder="Ano desta edição" required>
				</div>
				<div class="form-group">
					<label for="idioma" class="control-label">Idioma</label> <input
						class="form-control" type="text" name="idioma"
						placeholder="Idioma do livro" required>
				</div>
				<div class="form-group">
					<label for="isbn" class="control-label">ISBN</label> <input
						class="form-control" type="text" name="isbn"
						placeholder="ISBN do livro" required>
				</div>
				<div class="form-group">
					<label for="srcImagemCapa" class="control-label">Endereço
						da Imagem</label> <input class="form-control" type="text"
						name="srcImagemCapa" placeholder="Link da capa" required>
				</div>
				<div class="form-group">
					<label for="autor" class="control-label">Autor</label> <input
						class="form-control" id="autor" name="autor" placeholder="Autor"
						required />
				</div>
				<div class="container">
					<input type="submit" class="btn btn-primary" value="Salvar">
					<button type="button" class="btn btn-primary"
						onClick="history.go(-1)">Voltar</button>
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
</body>
</html>
<jsp:include page="footer.jsp">
	<jsp:param name="footer" value="" />
</jsp:include>