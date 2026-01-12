package com.ufabc.web.livraria.config;

import java.sql.Date;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.ufabc.web.livraria.model.dao.AutorDao;
import com.ufabc.web.livraria.model.dao.ClienteDao;
import com.ufabc.web.livraria.model.dao.EditoraDao;
import com.ufabc.web.livraria.model.dao.EmprestimoDao;
import com.ufabc.web.livraria.model.dao.ExemplarDao;
import com.ufabc.web.livraria.model.dao.LivroDao;
import com.ufabc.web.livraria.model.entity.Autor;
import com.ufabc.web.livraria.model.entity.Cliente;
import com.ufabc.web.livraria.model.entity.Editora;
import com.ufabc.web.livraria.model.entity.Emprestimo;
import com.ufabc.web.livraria.model.entity.Exemplar;
import com.ufabc.web.livraria.model.entity.Livro;

@Component
public class DataSeeder implements CommandLineRunner {

	@Autowired
	private AutorDao autorDao;

	@Autowired
	private EditoraDao editoraDao;

	@Autowired
	private LivroDao livroDao;

	@Autowired
	private ExemplarDao exemplarDao;

	@Autowired
	private ClienteDao clienteDao;

	@Autowired
	private EmprestimoDao emprestimoDao;

	@Override
	public void run(String... args) throws Exception {
		// Only seed if database is empty
		if (autorDao.count() > 0) {
			System.out.println("Database already contains data. Skipping seed data.");
			return;
		}

		System.out.println("Seeding database with initial data...");

		// Create Authors
		Autor autor1 = new Autor();
		autor1.setNome("Machado de Assis");
		autor1.setNacionalidade("Brasileiro");
		autor1 = autorDao.save(autor1);

		Autor autor2 = new Autor();
		autor2.setNome("Clarice Lispector");
		autor2.setNacionalidade("Brasileira");
		autor2 = autorDao.save(autor2);

		Autor autor3 = new Autor();
		autor3.setNome("Jorge Amado");
		autor3.setNacionalidade("Brasileiro");
		autor3 = autorDao.save(autor3);

		Autor autor4 = new Autor();
		autor4.setNome("George Orwell");
		autor4.setNacionalidade("Britânico");
		autor4 = autorDao.save(autor4);

		Autor autor5 = new Autor();
		autor5.setNome("J.K. Rowling");
		autor5.setNacionalidade("Britânica");
		autor5 = autorDao.save(autor5);

		// Create Publishers
		Editora editora1 = new Editora();
		editora1.setNome("Companhia das Letras");
		editora1.setSede("São Paulo, Brasil");
		editora1 = editoraDao.save(editora1);

		Editora editora2 = new Editora();
		editora2.setNome("Editora Globo");
		editora2.setSede("Rio de Janeiro, Brasil");
		editora2 = editoraDao.save(editora2);

		Editora editora3 = new Editora();
		editora3.setNome("Rocco");
		editora3.setSede("Rio de Janeiro, Brasil");
		editora3 = editoraDao.save(editora3);

		Editora editora4 = new Editora();
		editora4.setNome("Penguin Books");
		editora4.setSede("Londres, Reino Unido");
		editora4 = editoraDao.save(editora4);

		// Create Books
		Livro livro1 = new Livro();
		livro1.setTitulo("Dom Casmurro");
		livro1.setEdicao(1);
		livro1.setAno(1899);
		livro1.setIdioma("Português");
		livro1.setIsbn("978-85-359-0277-5");
		livro1.setSrcImagemCapa("/images/dom-casmurro.jpg");
		livro1.setAutor(autor1);
		livro1.setEditora(editora1);
		livro1 = livroDao.save(livro1);

		Livro livro2 = new Livro();
		livro2.setTitulo("A Hora da Estrela");
		livro2.setEdicao(1);
		livro2.setAno(1977);
		livro2.setIdioma("Português");
		livro2.setIsbn("978-85-359-0278-2");
		livro2.setSrcImagemCapa("/images/hora-estrela.jpg");
		livro2.setAutor(autor2);
		livro2.setEditora(editora1);
		livro2 = livroDao.save(livro2);

		Livro livro3 = new Livro();
		livro3.setTitulo("Capitães da Areia");
		livro3.setEdicao(1);
		livro3.setAno(1937);
		livro3.setIdioma("Português");
		livro3.setIsbn("978-85-359-0279-9");
		livro3.setSrcImagemCapa("/images/capitaes-areia.jpg");
		livro3.setAutor(autor3);
		livro3.setEditora(editora2);
		livro3 = livroDao.save(livro3);

		Livro livro4 = new Livro();
		livro4.setTitulo("1984");
		livro4.setEdicao(1);
		livro4.setAno(1949);
		livro4.setIdioma("Inglês");
		livro4.setIsbn("978-0-452-28423-4");
		livro4.setSrcImagemCapa("/images/1984.jpg");
		livro4.setAutor(autor4);
		livro4.setEditora(editora4);
		livro4 = livroDao.save(livro4);

		Livro livro5 = new Livro();
		livro5.setTitulo("Harry Potter e a Pedra Filosofal");
		livro5.setEdicao(1);
		livro5.setAno(1997);
		livro5.setIdioma("Português");
		livro5.setIsbn("978-85-325-1022-0");
		livro5.setSrcImagemCapa("/images/harry-potter.jpg");
		livro5.setAutor(autor5);
		livro5.setEditora(editora3);
		livro5 = livroDao.save(livro5);

		Livro livro6 = new Livro();
		livro6.setTitulo("Memórias Póstumas de Brás Cubas");
		livro6.setEdicao(1);
		livro6.setAno(1881);
		livro6.setIdioma("Português");
		livro6.setIsbn("978-85-359-0280-5");
		livro6.setSrcImagemCapa("/images/memorias-postumas.jpg");
		livro6.setAutor(autor1);
		livro6.setEditora(editora1);
		livro6 = livroDao.save(livro6);

		// Create Book Copies (Exemplares)
		// Dom Casmurro - 3 copies
		Exemplar exemplar1 = new Exemplar(livro1, true);
		exemplarDao.save(exemplar1);
		Exemplar exemplar2 = new Exemplar(livro1, true);
		exemplarDao.save(exemplar2);
		Exemplar exemplar3 = new Exemplar(livro1, true);
		exemplarDao.save(exemplar3);

		// A Hora da Estrela - 2 copies
		Exemplar exemplar4 = new Exemplar(livro2, true);
		exemplarDao.save(exemplar4);
		Exemplar exemplar5 = new Exemplar(livro2, true);
		exemplarDao.save(exemplar5);

		// Capitães da Areia - 2 copies
		Exemplar exemplar6 = new Exemplar(livro3, true);
		exemplarDao.save(exemplar6);
		Exemplar exemplar7 = new Exemplar(livro3, true);
		exemplarDao.save(exemplar7);

		// 1984 - 4 copies
		Exemplar exemplar8 = new Exemplar(livro4, true);
		exemplarDao.save(exemplar8);
		Exemplar exemplar9 = new Exemplar(livro4, true);
		exemplarDao.save(exemplar9);
		Exemplar exemplar10 = new Exemplar(livro4, true);
		exemplarDao.save(exemplar10);
		Exemplar exemplar11 = new Exemplar(livro4, true);
		exemplarDao.save(exemplar11);

		// Harry Potter - 3 copies
		Exemplar exemplar12 = new Exemplar(livro5, true);
		exemplarDao.save(exemplar12);
		Exemplar exemplar13 = new Exemplar(livro5, true);
		exemplarDao.save(exemplar13);
		Exemplar exemplar14 = new Exemplar(livro5, true);
		exemplarDao.save(exemplar14);

		// Memórias Póstumas - 2 copies
		Exemplar exemplar15 = new Exemplar(livro6, true);
		exemplarDao.save(exemplar15);
		Exemplar exemplar16 = new Exemplar(livro6, true);
		exemplarDao.save(exemplar16);

		// Create Clients
		Cliente cliente1 = new Cliente();
		cliente1.setNome("João Silva");
		cliente1.setCpf("123.456.789-00");
		cliente1.setIdade(28);
		cliente1.setEndereco("Rua das Flores, 123, São Paulo - SP");
		cliente1.setEmail("joao.silva@email.com");
		cliente1 = clienteDao.save(cliente1);

		Cliente cliente2 = new Cliente();
		cliente2.setNome("Maria Santos");
		cliente2.setCpf("987.654.321-00");
		cliente2.setIdade(35);
		cliente2.setEndereco("Avenida Paulista, 1000, São Paulo - SP");
		cliente2.setEmail("maria.santos@email.com");
		cliente2 = clienteDao.save(cliente2);

		Cliente cliente3 = new Cliente();
		cliente3.setNome("Pedro Oliveira");
		cliente3.setCpf("456.789.123-00");
		cliente3.setIdade(22);
		cliente3.setEndereco("Rua Augusta, 500, São Paulo - SP");
		cliente3.setEmail("pedro.oliveira@email.com");
		cliente3 = clienteDao.save(cliente3);

		Cliente cliente4 = new Cliente();
		cliente4.setNome("Ana Costa");
		cliente4.setCpf("789.123.456-00");
		cliente4.setIdade(30);
		cliente4.setEndereco("Rua dos Três Irmãos, 200, São Paulo - SP");
		cliente4.setEmail("ana.costa@email.com");
		cliente4 = clienteDao.save(cliente4);

		// Create some loans (Emprestimos)
		LocalDate hoje = LocalDate.now();
		LocalDate retorno1 = hoje.plusDays(7);
		LocalDate retorno2 = hoje.plusDays(14);

		Emprestimo emprestimo1 = new Emprestimo();
		emprestimo1.setCliente(cliente1);
		emprestimo1.setExemplar(exemplar1);
		emprestimo1.setDataDoEmprestimo(Date.valueOf(hoje.minusDays(2)));
		emprestimo1.setDataDeRetorno(Date.valueOf(retorno1));
		exemplar1.setDisponivel(false);
		exemplarDao.save(exemplar1);
		emprestimoDao.save(emprestimo1);

		Emprestimo emprestimo2 = new Emprestimo();
		emprestimo2.setCliente(cliente2);
		emprestimo2.setExemplar(exemplar8);
		emprestimo2.setDataDoEmprestimo(Date.valueOf(hoje.minusDays(5)));
		emprestimo2.setDataDeRetorno(Date.valueOf(retorno2));
		exemplar8.setDisponivel(false);
		exemplarDao.save(exemplar8);
		emprestimoDao.save(emprestimo2);

		Emprestimo emprestimo3 = new Emprestimo();
		emprestimo3.setCliente(cliente3);
		emprestimo3.setExemplar(exemplar12);
		emprestimo3.setDataDoEmprestimo(Date.valueOf(hoje.minusDays(1)));
		emprestimo3.setDataDeRetorno(Date.valueOf(retorno1));
		exemplar12.setDisponivel(false);
		exemplarDao.save(exemplar12);
		emprestimoDao.save(emprestimo3);

		System.out.println("Seed data created successfully!");
		System.out.println("- Authors: " + autorDao.count());
		System.out.println("- Publishers: " + editoraDao.count());
		System.out.println("- Books: " + livroDao.count());
		System.out.println("- Book Copies: " + exemplarDao.count());
		System.out.println("- Clients: " + clienteDao.count());
		System.out.println("- Loans: " + emprestimoDao.count());
	}
}

