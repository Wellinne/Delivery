Cenário: Escolha do prato
Given Usuário comum na tela inicial da escolha do tipo de comida 
When Usuário escolhe tipo de comida 
Then Usuario direcionado para a tela com  informações específicas sobre a comida desejada, preços, escolha de forma de pagamento. 



Cenário: Avaliação do prato 
Given Usuário logado comum na tela com informações específicas sobre a comida desejada
And Usuário já realizou a compra da comida anteriormente
When Avaliação (não-obrigatória) é selecionada na seção de avaliações do prato.
And Usuário digita a avaliação  e escreve conforme sua opnião (mudei aqui)
Then É notório a visualização por na seção de comentários e avaliação todas as avaliações deixadas anteriormente por compras anteriores de outros clientes
e também a adicionada recentemente.
Then

Cenário: Inserção de um prato no site
Given Usuário logado como admnistrador que se encontra na tela do feed de comidas 
And Admnistrador escolhe a seção de edição na aba de inserção e remoção de um novo prato 
And Admistrador escolhe o tipo de prato que quer adicionar: sobremesa, prato principal, couvert e bebida
When Admnistrador insere o prato que contém foto, informações sobre o prato como um pequeno resumo do que o compõe, o preço etc
Then O Prato recém adicionado é visível a todos os tipos de usuário na tela de feed de comida.


Cenário: Remoção de um prato no site 
Given Usuário logado como admnistrador que se encontra na tela do feed de comidas 
And Admnistrador escolhe a seção de edição na aba de inserção e remoção de um novo prato 
And Admistrador escolhe o tipo de prato que quer remover: sobremesa, prato principal, couvert e bebida
When Admnistrador remove o prato que contém foto, informações sobre o prato como um pequeno resumo do que o compõe, o preço etc
Then O Prato recém removido não é mais visível a todos os tipos de usuário na tela de feed de comida.
And O prato adicionado vai para seção de lixeira (seção somente vista pelos administradores), caso queira adicionar o mesmo prato posteriormente