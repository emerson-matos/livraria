<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Inserir Autor</title>

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
	
	<form action="/salvarAutor" method="post" modelAttribute="autor">
		<div class="container">
			<div class="form-group">
				<label for="nome" class="control-label">Nome do Autor</label>
				<input type="text" class="form-control" id="nome" name="nome" placeholder="Machado de Assis" required>
			</div>

			<div class="form-group">
				<label for="nacionalidade" class="control-label">Nacionalidade</label>
				<input type="text" class="form-control" id="nacionalidade"	name="nacionalidade" placeholder="Brasileiro" required>
			</div>
			<div class="form-group">
				<!-- Submit Button -->
				<button type="submit" class="btn btn-primary">Inserir</button>
				<button type="button" class="btn btn-primary" onClick="history.go(-1)">Voltar</button>
			</div>
		</div>
	</form>
		
</body>
</html>

	<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>

