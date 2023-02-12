Feature: Editar Perfil no sistema
    As a usuário cadastrado no sistema
    I want to editar o meu perfil no sistema
    So that eu posso ter meus dados atualizados no sistema

    Scenario: Editar perfil bem sucedido
        Given estou logado no sistema
        When clicar no botão "Editar Perfil"
        Then eu devo ser redirecionado para a página edição de Perfil
        And eu vejo os meus dados atuais preenchidos no campo de formulário
        And eu clicar em "Editar"
        When eu editar as informações do meu perfil
        And clicar no botão "Salvar"
        Then as informações do meu perfil devem ser atualizados com sucesso
        And as informações atualizadas devem ser exibidas na página do meu perfil.

    Scenario: Editar informações do perfil sem sucesso
        Given estou logado no sistema
        When clicar no botão "Editar Perfil"
        Then eu devo ser redirecionado para a página edição de Perfil
        And eu vejo os meus dados atuais preenchidos no campo de formulário
        And eu clicar em "Editar"
        Wheneu editar as informações do meu perfil e retiro todos os campos obrigatórios deixando como vazios
        And clicar no botão "Salvar"
        Then uma mensagem de erro deve ser exibida informando os campos preenchidos incorretamente
        And as informações do meu perfil não devem atualizadas.

   Scenario: Editar perfil mal sucedido por CPF não preenchido corretamente
        Given estou logado no sistema
        When clicar no botão "Editar Perfil"
        Then eu devo ser redirecionado para a página edição de Perfil
        And eu vejo os meus dados atuais preenchidos no campo de formulário
        And eu clicar em "Editar"
        When eu editar o campo obrigatório "CPF" com o valor "123.456.789" 
        And clicar no botão "Salvar"
        Then uma mensagem de erro deve ser exibida informando o campo preenchido incorretamente
        And as informações do meu perfil não devem atualizadas.

    Scenario: Editar perfil mal sucedido por nome não preenchido corretamente
        Given estou logado no sistema
        When clicar no botão "Editar Perfil"
        Then eu devo ser redirecionado para a página edição de Perfil
        And eu vejo os meus dados atuais preenchidos no campo de formulário
        And eu clicar em "Editar"
        When eu editar o campo obrigatório "Nome" com o valor "" 
        And clicar no botão "Salvar"
        Then uma mensagem de erro deve ser exibida informando o campo preenchido incorretamente
        And as informações do meu perfil não devem atualizadas.

    Scenario: Editar perfil mal sucedido por email não preenchido corretamente
        Given estou logado no sistema
        When clicar no botão "Editar Perfil"
        Then eu devo ser redirecionado para a página edição de Perfil
        And eu vejo os meus dados atuais preenchidos no campo de formulário
        And eu clicar em "Editar"
        When eu editar o campo obrigatório "Email" com o valor "wwna.br" 
        And clicar no botão "Salvar"
        Then uma mensagem de erro deve ser exibida informando o campo preenchido incorretamente
        And as informações do meu perfil não devem atualizadas.

    Scenario: Editar perfil mal sucedido por senha não preenchida corretamente
        Given estou logado no sistema
        When clicar no botão "Editar Perfil"
        Then eu devo ser redirecionado para a página edição de Perfil
        And eu vejo os meus dados atuais preenchidos no campo de formulário
        And eu clicar em "Editar"
        When eu editar o campo obrigatório "Senha" com o valor "" 
        And clicar no botão "Salvar"
        Then uma mensagem de erro deve ser exibida informando o campo preenchido incorretamente
        And as informações do meu perfil não devem atualizadas.