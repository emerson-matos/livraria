package com.ufabc.web.livraria.model.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ufabc.web.livraria.model.entity.Exemplar;
import com.ufabc.web.livraria.model.entity.Livro;

@Repository
public interface ExemplarDao extends JpaRepository<Exemplar, Long> {
	@Query("select count(e.idexemplar) from Exemplar e where e.disponivel = true and e.livro.idlivro=:id")
	Long countExemplarDisponivel(@Param("id") Long id);
	
	List<Exemplar> findByLivro(Livro id);
}
