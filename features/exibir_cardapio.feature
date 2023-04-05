feature: exibicao do cardápio
as a intens do cardápio
 i want to apresentar cardápio
so that exibir itens listados

scennario: exibir informações dos produtos
given exibir informações dos produtos cadastrados
when clicar "Staker" e apresentar as informações
then página adicionar no carrinho

scennario: pesquisar os produtos listados
given pesquisar produto "Staker"
when verificar nos produtos cadastrados
and verificar se "Staker" está no cardápio
then retorna produto encontrado
and retorna erro se produto não encontrado

scennario: pesquisar os produtos listados
given pesquisar produto "Pizza"
when verificar nos produtos cadastrados
and verificar se "Pizza" está no cardápio
then retorna produto encontrado
and retorna erro se produto não encontrado

scennario: alterar itens do pedido
given exibindo informações do pedido
when caixinha de observações
and checkbox adicionar item + valor
then conclui e retorna a informações do pedido