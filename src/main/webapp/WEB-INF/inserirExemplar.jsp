<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Inserir Exemplar</title>

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

	<form action="/salvarExemplar" method="post">
		<div class="container">
			<div class="form-group">
				<label for="titulo" class="control-label">Nome do Livro</label> <input
					class="form-control" id="titulo" name="titulo" placeholder="" required>
			</div>
			<div class="form-group">
				<input name="disponivel" id="disponivel" value="true" hidden>
			</div>
			<div class="form-group">
				<!-- Submit Button -->
				<button type="submit" class="btn btn-primary">Inserir</button>
				<button type="button" class="btn btn-primary"
					onClick="history.go(-1)">Voltar</button>
			</div>
		</div>
	</form>
	
	<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>


	<script>
		$('#titulo').autocomplete({
			source : function(request, response) {
				$.ajax({
					url : 'http://localhost:8080/livros/findByName/',
					type : 'POST',
					dataType : 'json',
					data : {
						titulo : request.term,
					},
					success : function(data) {
						response($.map(data, function(item) {
							console.log(item['titulo'])
							return {
								label : item['titulo'],
								value : item['titulo']
							}
						}));
					}
				});
			}
		});
	</script>
</body>

</html>


