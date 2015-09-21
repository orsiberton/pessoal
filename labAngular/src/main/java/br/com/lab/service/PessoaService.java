package br.com.lab.service;

import java.util.List;

import br.com.lab.model.Pessoa;

public interface PessoaService {

    Pessoa findById(Long id);

    void savePessoa(Pessoa pessoa);

    List<Pessoa> findAllPessoas();

}
