scenario: verificar se o cartao eh valido
given numero do cartao e cvv
when verificar a validade do cartao e a bandeira
then armazena o cartao em forma de pagamento

scenario selecionar formas de pagamento do pedido
given menu carrinho de compras
when fazer uma lista de opcoes de escolha
then adicao de cupom de desconto
then adicao de brinde

scenario remocao de item adicionado ao carrinho
given selecionar itens a serem comprados
when subtrair 1 unidade do item do carrinho
then caixa de selecao de itens informando a quantidade dos itens

scenario: adicionar mais itens ao carrinho
when retornar ao menu de seleção de compra
then adiciona itens e retorna ao pagamento
