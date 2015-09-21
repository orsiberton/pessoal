Cadastrar um novo paciente no sistema

Narrative:
In order to um paciente possa ser atendido no consultorio
As a usuario do sistema
I want cadastrar o paciente no sistema

Scenario: Preenchendo os dados do paciente
Given o usuario esta na tela de cadastro de novo paciente
When o usuario preenche os dados do paciente e clica no botao Salvar
Then o sistema exibe a mensagem Paciente cadastrado com sucesso

Scenario: Omitindo campos obrigatorios no cadastro do paciente
Given o usuario esta na tela de cadastro de novo paciente
When o usuario omite campos obrigatorios no cadastro do paciente e clica em Salvar
Then o sistema exibe a mensagem "Favor preencher os campos obrigatorios"

Scenario: Tentando cadastrar paciente ja existente
Given o usuario esta na tela de cadastro de novo paciente
When o usuario preenche os dados do paciente ja existente e clica no botao Salvar
Then o sistema exibe a mensagem Paciente ja esta cadastrado no sistema

Scenario: Desistindo do cadastro antes de finalizar
Given o usua exibe a mensagem Paciente ja esta cadastrado no sistemario esta na tela de cadastro de novo paciente e decide nao finalizar
When o usuario clica no botao Cancelar
Then o sistema pede para confirmar o cancelamento e limpa a tela



