<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp">
	<jsp:param name="header" value="" />
</jsp:include>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8" />
	<title>Editar ${exemplar.livro.titulo}</title>
	
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link href="resources/site.css" rel="stylesheet">
	<link rel="stylesheet"
		href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>


</head>

<body>


	<form action="/salvarEdicaoExemplar" method="post"
		style="margin-top: 75px;">
		<div class="container">
			<div class="form-group">
				<input type="text" class="form-control" id="idexemplar"
					name="idexemplar" required value="${exemplar.idexemplar}"
					style="display: none;">
			</div>
			<div class="form-group">
				<label for="nomeAutor" class="control-label">Nome do Livro</label> <input
					type="text" class="form-control" id="titulo" name="titulo"
					value="${exemplar.livro.titulo}" disabled> <label
					for="disponivel" class="control-label">Disponível</label> <input
					type="checkbox" class="form-control" id="disponivel"
					name="disponivel"
					${exemplar.disponivel== true? "checked":"unchecked"}>
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
	<jsp:param name="footer" value="" />
</jsp:include>

