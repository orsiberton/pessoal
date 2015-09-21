package br.com.pep.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.pep.dao.PessoaDAO;
import br.com.pep.model.Pessoa;
import br.com.pep.service.PessoaService;

@Service("pessoaService")
@Transactional
public class PessoaServiceImpl implements PessoaService {

    @Autowired
    private PessoaDAO pessoaDAO;

    @Override
    public Pessoa findById(Long id) {
        return pessoaDAO.findOne(id);
    }

    @Override
    public void savePessoa(Pessoa pessoa) {
        pessoaDAO.save(pessoa);
    }

    public List<Pessoa> findAllPessoas() {
        return pessoaDAO.findAll();
    }

}
