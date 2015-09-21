package br.com.pep.service;

import java.util.List;

import br.com.pep.model.Pessoa;

public interface PessoaService {

    Pessoa findById(Long id);

    void savePessoa(Pessoa pessoa);

    List<Pessoa> findAllPessoas();

}
