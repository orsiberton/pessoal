Scenario: Alterar os dados cadastrais de um paciente
Given o usuario esta na tela de alteracao de dados do paciente
When o usuario altera os dados do paciente e clica em salvar
Then o sistema salva os novos dados do paciente