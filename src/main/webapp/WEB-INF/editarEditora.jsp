<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
	
	<title>Editar Editora</title>
	
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
	<form action="/salvarEditora" method="post" modelAttribute="editora">
		<div class="container">
			<div class="form-group">
				<input type="text" class="form-control" id="ideditora" name="ideditora" required value="${editora.ideditora}" style="display:none;">
			</div>
			<div class="form-group">
				<label for="nomeEditora" class="control-label">Nome da Editora</label>
				<input type="text" class="form-control" id="nome" name="nome" required value="${editora.nome}">
			</div>

			<div class="form-group">
				<label for="sedeEditora" class="control-label">Sede da Editora</label>
				<input type="text" class="form-control" id="sede"	name="sede" value ="${editora.sede}" required>
			</div>
			<div class="form-group">
				<!-- Submit Button -->
				<button type="submit" class="btn btn-primary">Salvar</button>
			</div>
		</div>
	</form>
	<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>

</body>
</html>