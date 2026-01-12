<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link href="/resources/site.css" rel="stylesheet">
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
	<div class="container">
		<a class="navbar-brand d-flex align-items-center" href="index">
			<i class="bi bi-book-fill me-2" style="font-size: 1.5rem;"></i>
			<span>Livraria</span>
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item">
					<a class="nav-link" href="/index">
						<i class="bi bi-house-door me-1"></i>Home
					</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="livrosDropdown" role="button"
						 data-bs-toggle="dropdown" aria-expanded="false">
						<i class="bi bi-book me-1"></i>Livros
					</a>
					<ul class="dropdown-menu" aria-labelledby="livrosDropdown">
						<li><a class="dropdown-item" href="/livros"><i class="bi bi-list-ul me-2"></i>Lista de Livros</a></li>
						<li><a class="dropdown-item" href="/inserirLivro"><i class="bi bi-plus-circle me-2"></i>Inserir Livro</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="autoresDropdown" role="button"
						 data-bs-toggle="dropdown" aria-expanded="false">
						<i class="bi bi-person-fill me-1"></i>Autores
					</a>
					<ul class="dropdown-menu" aria-labelledby="autoresDropdown">
						<li><a class="dropdown-item" href="/autores"><i class="bi bi-list-ul me-2"></i>Lista de Autores</a></li>
						<li><a class="dropdown-item" href="/inserirAutor"><i class="bi bi-plus-circle me-2"></i>Inserir Autor</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="exemplaresDropdown" role="button"
						 data-bs-toggle="dropdown" aria-expanded="false">
						<i class="bi bi-stack me-1"></i>Exemplares
					</a>
					<ul class="dropdown-menu" aria-labelledby="exemplaresDropdown">
						<li><a class="dropdown-item" href="/exemplares"><i class="bi bi-list-ul me-2"></i>Lista de Exemplares</a></li>
						<li><a class="dropdown-item" href="/inserirExemplar"><i class="bi bi-plus-circle me-2"></i>Inserir Exemplar</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="clientesDropdown" role="button"
						 data-bs-toggle="dropdown" aria-expanded="false">
						<i class="bi bi-people-fill me-1"></i>Clientes
					</a>
					<ul class="dropdown-menu" aria-labelledby="clientesDropdown">
						<li><a class="dropdown-item" href="/clientes"><i class="bi bi-list-ul me-2"></i>Lista de Clientes</a></li>
						<li><a class="dropdown-item" href="/inserirCliente"><i class="bi bi-plus-circle me-2"></i>Inserir Cliente</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="editorasDropdown" role="button"
						 data-bs-toggle="dropdown" aria-expanded="false">
						<i class="bi bi-building me-1"></i>Editoras
					</a>
					<ul class="dropdown-menu" aria-labelledby="editorasDropdown">
						<li><a class="dropdown-item" href="/editoras"><i class="bi bi-list-ul me-2"></i>Lista de Editoras</a></li>
						<li><a class="dropdown-item" href="/inserirEditora"><i class="bi bi-plus-circle me-2"></i>Inserir Editora</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	
</body>
</html>