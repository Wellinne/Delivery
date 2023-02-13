Feature: Login do Restaurante
  As a restaurante admnistrador do sistema
  I want to realizar o login no sistema
  So that eu possa usar o sistema
  And realizar pedidos e adicionar itens ao cardapio

  Scenario: Login bem sucedido
    Given estou na tela de "login do restaurante"
    And existe um usuário com o campo "E-MAIL" com valor "admin@test.com" e o campo "SENHA" com valor "admin123"
    When eu preencho no campo "e-mail" o valor "admin@test.com"
    And eu preencho no campo "senha" o valor "admin123"
    And eu seleciono a opção "login"
    Then o login é realizado no sistema
    And sou redirecionado para a tela "exibição do cardapio"

  Scenario: Login mal sucedido por senha incorreta
    Given estou na tela de "login do restaurante"
    And existe um usuário com o campo "E-MAIL" com valor "admin@test.com" e o campo "SENHA" com valor "admin123"
    When eu preencho no campo "e-mail" o valor "admin@test.com"
    And eu preencho no campo "senha" o valor "654321"
    And eu seleciono a opção "login"
    Then o login não é realizado no sistema
    And eu vejo uma mensagem na tela informando "login ou senha incorretos"

  Scenario: Login mal sucedido por email incorreto
    Given estou na tela de "login do restaurante"
    And existe um usuário com o campo "E-MAIL" com valor "admin@test.com" e o campo "SENHA" com valor "admin123"
    When eu preencho no campo "e-mail" o valor "emailincorreto@test.com"
    And eu preencho no campo "senha" o valor "admin123"
    And eu seleciono a opção "login"
    Then o login não é realizado no sistema
    And eu vejo uma mensagem na tela informando "login ou senha incorretos"

  Scenario: Login mal sucedido por formulário incompleto (senha não preenchida)
    Given estou na tela de "login do restaurante"
    When eu preencho no campo "e-mail" o valor "admin@test.com"
    And eu seleciono a opção "login"
    Then o login não é realizado no sistema
    And eu vejo uma mensagem na tela informando "Preencha todos os campos"

  Scenario: Login mal sucedido por formulário incompleto (email não preenchido)
    Given estou na tela de "login do restaurante"
    When eu preencho no campo "senha" o valor "admin123"
    And eu seleciono a opção "login"
    Then o login não é realizado no sistema
    And eu vejo uma mensagem na tela informando "Preencha todos os campos"

  Scenario: Login mal sucedido por email inválido
    Given estou na tela de "login"
    When eu preencho no campo "email" o valor "emailnaoexiste"
    And eu preencho no campo "senha" o valor "admin123"
    And eu seleciono a opção "login"
    Then o login não é realizado no sistema
    And eu vejo uma mensagem na tela informando "Insira um email válido"
