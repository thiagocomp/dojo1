#language: pt
#utf-8
@cadastrar
Funcionalidade: Cadastrar Empregado
  Eu como usuario do sistema
  Quero cadastrar um Empregado
  Para registrar no sistema

  Cenario: Cadastrar Empregado no sistema
    Dado que eu acesse o sistema com usuario "admin" e senha "admin"
    E acesso o menu de cadastro de empregado
    Quando eu preencher dos dados do Empregado
    Entao devera retornar a tela dos dados do empregado
