package br.com.pep.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.pep.model.Pessoa;

@Repository
public interface PessoaDAO extends JpaRepository<Pessoa, Long> {

}
