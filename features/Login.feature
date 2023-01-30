Feature: Login no sistema
  As a usuário do sistema
  I want to realizar o login no sistema
  So that eu possa usar o sistema
  And comprar comida

  Scenario: Login bem sucedido
    Given estou na tela de "login"
    And existe um usuário com o campo "EMAIL" com valor "email@test.com" e o campo "SENHA" com valor "123456"
    When eu preencho no campo "email" o valor "email@test.com"
    And eu preencho no campo "senha" o valor "123456"
    And eu seleciono a opção "Entrar"
    Then o login é realizado no sistema
    And sou redirecionado para a tela "Feed de Comidas"

  Scenario: Login mal sucedido por senha inválida
    Given estou na tela de "login"
    And existe um usuário com o campo "EMAIL" com valor "email@test.com" e o campo "SENHA" com valor "123456"
    When eu preencho no campo "email" o valor "email@test.com"
    And eu preencho no campo "senha" o valor "654321"
    And eu seleciono a opção "Entrar"
    Then o login não é realizado no sistema
    And eu vejo uma mensagem na tela informando "login ou senha incorretos"

  Scenario: Login mal sucedido por email incorreto
    Given estou na tela de "login"
    And existe um usuário com o campo "EMAIL" com valor "email@test.com" e o campo "SENHA" com valor "123456"
    When eu preencho no campo "email" o valor "emailincorreto@test.com"
    And eu preencho no campo "senha" o valor "123456"
    And eu seleciono a opção "Entrar"
    Then o login não é realizado no sistema
    And eu vejo uma mensagem na tela informando "login ou senha incorretos"

  Scenario: Login mal sucedido por formulário incompleto (senha não preenchida)
    Given estou na tela de "login"
    When eu preencho no campo "email" o valor "email@test.com"
    And eu seleciono a opção "Entrar"
    Then o login não é realizado no sistema
    And eu vejo uma mensagem na tela informando "Preencha todos os campos"

  Scenario: Login mal sucedido por formulário incompleto (email não preenchido)
    Given estou na tela de "login"
    When eu preencho no campo "senha" o valor "123456"
    And eu seleciono a opção "Entrar"
    Then o login não é realizado no sistema
    And eu vejo uma mensagem na tela informando "Preencha todos os campos"

  Scenario: Login mal sucedido por email inválido
    Given estou na tela de "login"
    When eu preencho no campo "email" o valor "emailnaoexiste"
    And eu preencho no campo "senha" o valor "123456"
    And eu seleciono a opção "Entrar"
    Then o login não é realizado no sistema
    And eu vejo uma mensagem na tela informando "Insira um email válido"