<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
	<title>${exemplar.livro.titulo} - ${exemplar.idexemplar}</title>
	
	
	
</head>

<body>

	<jsp:include page="header.jsp">
	    <jsp:param name="header" value=""/>
	</jsp:include>
		
	<form action="/salvarEmprestimo" method="post">
		<div class="container">
			<div class="form-group">
				<label for="nome" class="control-label">Cliente</label>
				<input type="text" class="form-control" id="cliente" name="cliente" placeholder="Nome do cliente" required>
			</div>

			<div class="form-group">
				<label for="nacionalidade" class="control-label">Livro</label>
				<input type="text" class="form-control" id="nomedolivro"	name="nomedolivro" value="${exemplar.livro.titulo}" readonly required>
			</div>
			<div class="form-group" style="display: ;">
				<label for="nacionalidade" class="control-label">ID do exemplar</label>
				<input type="text" class="form-control" id="idexemplar"	name="idexemplar" value="${exemplar.idexemplar}" readonly required>
			</div>
			
			<div class="form-group">
				<label for="dataDeEmprestimo" class="control-label">Data de Emprestimo</label>
				<input type="date" class="form-control" id="dataDeEmprestimo"	name="dataDeEmprestimo" required>
			</div>
			
			<div class="form-group">
				<label for="dataDeRetorno" class="control-label">Data de Retorno</label>
				<input type="date" class="form-control" id="dataDeRetorno"	name="dataDeRetorno" required>
			</div>
			<div class="form-group">
				<!-- Submit Button -->
				<button type="submit" class="btn btn-primary">Salvar</button>
				<button type="button" class="btn btn-primary" onClick="history.go(-1)">Voltar</button>
			</div>
		</div>
	</form>
	
	
	<jsp:include page="footer.jsp">
	    <jsp:param name="footer" value=""/>
	</jsp:include>
	
	<script>
		$('#cliente').autocomplete({
			source : function(request, response) {
				$.ajax({
					url : 'http://localhost:8080/cliente/findByName/',
					type : 'POST',
					dataType : 'json',
					data : {
						nome : request.term,
					},
					success : function(data) {
						response($.map(data, function(item) {
							console.log(item['nome'])
							return {
								label : item['nome'],
								value : item['nome']
							}
						}));
					}
				});
			}
		});
	</script>
</body>

</html>
