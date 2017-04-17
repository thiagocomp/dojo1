#language: pt
#utf-8
@editar
Funcionalidade: Editar Empregado
  Eu como usuario do sistema
  Quero ediar um Empregado
  Para registrar no sistema

  Cenario: Editar Empregado no sistema
    Dado que eu acesse o sistema com usuario "admin" e senha "admin"
    E acesso o menu de lista de empregados
    Quando eu localizo o empregado
    Entao eu altero o cadastro do empregado
    E valido a mensagem da alteração
