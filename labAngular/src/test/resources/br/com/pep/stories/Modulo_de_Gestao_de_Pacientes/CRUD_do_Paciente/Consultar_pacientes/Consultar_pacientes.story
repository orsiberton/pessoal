Scenario Consulta de pacientes com um unico filtro 
Given o usuario esta na tela de consulta de paciente
When o usuario inputa o <valor> do <campo> 
Then o sistema exibe um resumo dos dados dos pacientes com este <valor> no <campo>

Example:

|	campo	|	valor				  |
|	nome	| "Eustacio da Silva Sauro" |
|	cpf		| "666.666.666-66"		  |
|   RNS		| XXXXXXX				  |
|   diagonisto | X					  |
|   localizacao | "ACRE"			  |
|   data_de_nascimetno | "16-03-1992" |


Scenario Consulta de pacientes com multi-filtros
Given o usuario esta na tea de consulta de paciente
When o usuario inputa os <valores> dos <campos> 
Then o sistema exibe um resumo dos dados dos pacientes com estes <valors> nos <campos>

Example: 

|  campos 	|   valores				|
| [nome, cpf, idade] |   ["Ana Julia Medeiros", "000.000.000-01", "69"]


Scenario Consulta de paciente nao cadastrado
Given o usuario esta na tea de consulta de paciente
Given o usuario esta na tela de consulta de paciente
When o usuario inputa os <valores> dos <campos> 
Then o sistema exibe a mensagem "Nenhum paciente cadastrado"

Scenario Usurio digita valor invalido de filtro
Given o usuario esta na tela de consulta do paciente
When o usuario inputa o <valor> do <campo>
Then o sistema deve exiber a mensagem "<campo> invalido!"

Example:

|	campo	|	valor	|
| cpf		| "banana"	|
| nome		| ca8987	|