Feature: Cadastro no sistema
    As a usuário não cadastrado no sistema
    I want to realizar cadastro no sistema
    So that eu posso usar o sistema
    And fazer o login plataforma

    Scenario: Cadastro bem sucedido
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com" e o campo opcional "CPF" com o valor "123.456.789-10"
        When eu preencho o campo "NOME" com o valor "Wellinne"
        And eu preencho o campo "CPF" com o valor "123.456.789-10"
        And eu preencho o campo "SENHA" com o valor "12345678"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-9999"
        And eu preencho o campo "EMAIL" com o valor "teste@gmail.com"
        And seleciono a opção "Cadastrar"
        Then o cadastrado é realizado com sucesso
        And sou redirecionado para a tela de "Login"

    Scenario: Cadastro bem sucedido sem o campo opcional "CPF"
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com"
        When eu preencho o campo "NOME" com o valor "Wellinne"
        And eu preencho o campo "SENHA" com o valor "12345678"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-9999"
        And eu preencho o campo "EMAIL" com o valor "teste@gmail.com"
        And seleciono a opção "Cadastrar"
        Then o cadastrado é realizado com sucesso
        And sou redirecionado para a tela de "Login"

    Scenario: Cadastro mal sucedido por email incorreto
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com"
        When eu preencho no campo "EMAIL" com o valor "teste.com"
        And eu preencho o campo "SENHA" com o valor "12345678"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-9999"
        And eu preencho o campo "NOME" com o valor "Wellinne"
        And seleciono a opção "Cadastrar"
        Then o cadastro não é realizado com sucesso
        And eu vejo abaixo do campo "EMAIL" uma mensagem informando "Email inválido"

    Scenario: Cadastro mal sucedido por email já existente
        Given estou na tela de "Cadastro"
        And existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com"
        When eu preencho no campo "EMAIL" com o valor "teste@gmail.com"
        And eu preencho o campo "SENHA" com o valor "12345678"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-9999"
        And eu preencho o campo "NOME" com o valor "Wellinne"
        And seleciono a opção "Cadastrar"
        Then o cadastro não é realizado com sucesso
        And eu vejo uma mensagem na tela informando "Email já cadastrado na plataforma"

    Scenario: Cadastro mal sucedido por CPF já existente
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com"
        And existe o campo opcional "CPF" com o valor "123.456.789-10"
        When eu preencho no campo "EMAIL" com o valor "teste@gmail.com"
        And eu preencho o campo "SENHA" com o valor "12345678"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-9999"
        And eu preencho o campo "CPF" com o valor "123.456.789-10"
        And eu preencho o campo "NOME" com o valor "Wellinne"
        And seleciono a opção "Cadastrar"
        Then o cadastro não é realizado com sucesso
        And eu vejo uma mensagem na tela informando "CPF já cadastrado na plataforma"

    Scenario: Cadastro mal sucedido por telefone incorreto
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com"
        When eu preencho no campo "EMAIL" com o valor "teste@gmail.com"
        And eu preencho o campo "SENHA" com o valor "12345678"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-99"
        And eu preencho o campo "NOME" com o valor "Wellinne"
        And seleciono a opção "Cadastrar"
        Then o cadastro não é realizado com sucesso
        And eu vejo abaixo do campo "TELEFONE" uma mensagem informando "Telefone inválido"

    Scenario: Cadastro mal sucedido por CPF incorreto
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com" e o campo opcional "CPF" com o valor "123.456.789-10"
        When eu preencho no campo "EMAIL" com o valor "teste@gmail.com"
        And eu preencho o campo "SENHA" com o valor "12345678"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-9999"
        And eu preencho o campo "NOME" com o valor "Wellinne"
        And eu preencho o campo "CPF" com o valor "123.456.78"
        And seleciono a opção "Cadastrar"
        Then o cadastro não é realizado com sucesso
        And eu vejo abaixo do campo "CPF" uma mensagem informando "CPF inválido"

    Scenario: Cadastro mal sucedido por senha e confirmar senha serem diferentes
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com"
        When eu preencho no campo "EMAIL" com o valor "teste@gmail.com"
        And eu preencho o campo "SENHA" com o valor "123456789"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-9999"
        And eu preencho o campo "NOME" com o valor "Wellinne"
        And seleciono a opção "Cadastrar"
        Then o cadastro não é realizado com sucesso
        And eu vejo abaixo do campo "SENHA" e do campo "CONFIRMAR SENHA" uma mensagem informando "As senhas devem ser iguais"

    Scenario: Cadastro mal sucedido por email não preenchida
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com" e o campo opcional "CPF" com o valor "123.456.789-10"
        When eu preencho o campo "NOME" com o valor "Wellinne"
        And eu preencho o campo "CPF" com o valor "123.456.789-10"
        And eu preencho o campo "SENHA" com o valor "12345678"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-9999"
        And seleciono a opção "Cadastrar"
        Then o cadastrado não é realizado com sucesso
        And eu vejo abaixo do campo "EMAIL" uma mensagem informando "Email inválido"

    Scenario: Cadastro mal sucedido por senha não preenchida
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com" e o campo opcional "CPF" com o valor "123.456.789-10"
        When eu preencho o campo "NOME" com o valor "Wellinne"
        And eu preencho o campo "CPF" com o valor "123.456.789-10"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-9999"
        And eu preencho no campo "EMAIL" com o valor "teste@gmail.com"
        And seleciono a opção "Cadastrar"
        Then o cadastrado não é realizado com sucesso
        And eu vejo abaixo do campo "SENHA" e no campo "CONFIRMAR SENHA" uma mensagem informando "Senha inválida"

    Scenario: Cadastro mal sucedido por nome não preenchido
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com" e o campo opcional "CPF" com o valor "123.456.789-10"
        When eu preencho o campo "CPF" com o valor "123.456.789-10"
        And eu preencho o campo "TELEFONE" com o valor "(99) 99999-9999"
        And eu preencho no campo "EMAIL" com o valor "teste@gmail.com"
        And eu preencho o campo "SENHA" com o valor "12345678"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And seleciono a opção "Cadastrar"
        Then o cadastrado não é realizado com sucesso
        And eu vejo abaixo do campo "NOME" uma mensagem informando "Nome inválido"

    Scenario: Cadastro mal sucedido por telefone não preenchida
        Given estou na tela de "Cadastro"
        And não existe um usuário com o campo obrigatório "EMAIL" com o valor "teste@gmail.com" e o campo opcional "CPF" com o valor "123.456.789-10"
        When eu preencho o campo "NOME" com o valor "Wellinne"
        And eu preencho o campo "CPF" com o valor "123.456.789-10"
        And eu preencho no campo "EMAIL" com o valor "teste@gmail.com"
        And eu preencho o campo "SENHA" com o valor "12345678"
        And eu preencho o campo "CONFIRMAR SENHA" com o valor "12345678"
        And seleciono a opção "Cadastrar"
        Then o cadastrado não é realizado com sucesso
        And eu vejo abaixo do campo "TELEFONE" uma mensagem informando "Telefone inválido"

 