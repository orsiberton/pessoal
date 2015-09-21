package br.com.lab.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.lab.model.Pessoa;

@Repository
public interface PessoaDAO extends JpaRepository<Pessoa, Long> {

}
