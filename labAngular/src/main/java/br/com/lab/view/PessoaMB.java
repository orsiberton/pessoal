package br.com.lab.view;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import br.com.lab.model.Pessoa;
import br.com.lab.service.PessoaService;

@ManagedBean(name = "pessoaMB")
@ViewScoped
public class PessoaMB extends AbstractMB {

    private static final long serialVersionUID = 413799998894076077L;

    @ManagedProperty(value = "#{pessoaService}")
    private PessoaService pessoaService;

    @PostConstruct
    public void inicializar() {
        System.out.println("Teste");
    }

    public void geraPessoaESalva() {
        Pessoa pessoa = new Pessoa();
        pessoa.setNome("Bruno Berton");

        pessoaService.savePessoa(pessoa);
    }

    public PessoaService getPessoaService() {
        return pessoaService;
    }

    public void setPessoaService(PessoaService pessoaService) {
        this.pessoaService = pessoaService;
    }

}
