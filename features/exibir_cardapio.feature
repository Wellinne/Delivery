feature: exibicao do cardápio
as a intens do cardápio
 i want to apresentar cardápio
so that exibir itens listados

scennario: exibir informações dos produtos
given exibir informações dos produtos cadastrados
when clicar "nome_produto" e apresentar as informações
then página adicionar no carrinho

scennario: pesquisar os produtos listados
given pesquisar produto "nome_produto"
when verificar nos produtos cadastrados
and verificar se "nome_produto" está no cardápio
then retorna produto encontrado
and retorna erro se produto não encontrado

scennario: alterar itens do pedido
given exibindo informações do pedido
when caixinha de observações
and checkbox adicionar item + valor
then conclui e retorna a informações do pedido