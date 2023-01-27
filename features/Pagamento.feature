scenario: verificar se o cartao eh valido
given numero do cartao e cvv
when verificar a validade do cartao e a bandeira
then armazena o cartao em forma de pagamento

scenario selecionar formas de pagamento do pedido
when fazer uma lista de opcoes de escolha
then adicao de cupom de desconto

