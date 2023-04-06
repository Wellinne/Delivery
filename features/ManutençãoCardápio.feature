Feature: Cadastro e manutenção de itens no cardápio
    As a proprietário do estabelecimento
    I want to poder adicionar, remover e editar itens
    So that o cardápio mantenha-se atualizado

Scenario: Adição de novo item com sucesso
    Given que estou logado como administrador
    When eu acessar a opção "Gerenciar cardápio"
    And clicar na opção "Adicionar novo item"
    And preencher todos os campos necessários, incluindo nome, descrição, preço e imagem
    And clicar no botão "Adicionar item"
    Then o novo item deve ser exibido no cardápio
    And um aviso de "Item adicionado com sucesso" deve ser exibido na tela

Scenario: Falha na adição de novo item
    Given que eu estou logado como administrador
    When eu acessar a opção "Gerenciar cardápio"
    And deixo em branco pelo menos um dos campos obrigatórios
    And clicar no botão "Adicionar novo item"
    Then tela de adição de item não deve ser fechada
    And uma mensagem de erro deve ser exibida informando o(s) campo(s) obrigatório(s) não preenchido(s)

Scenario: Excluir item do cardápio com sucesso
    Given que estou logado como administrador
    When eu acessar a seção "Gerenciar cardápio"
    And selecionar um item
    And clicar no botão "Excluir item"
    Then uma confirmação de exclusão deve ser exibida
    And ao confirmar a exclusão, o item selecionado deve ser removido do cardápio
    And uma mensagem de "Item excluído com sucesso" deve ser exibida na tela

Scenario: Edição dos campos de um item com sucesso
    Given que estou logado como administrador
    When eu acessar a seção "Gerenciar cardápio"
    And selecionar um item
    And clicar no botão "Editar item"
    And editar os campos que eu quero
    Then o item com os dados atualizado deve ser exibido no cardápio
    And um aviso de "Item editado com sucesso" deve ser exibido na tela
