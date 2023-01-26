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