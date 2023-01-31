Cenário: Mudança/Adição de localização de entrega
Given Usuário é cadastrado
And Usuário está na tela de perfil do aplicativo
When Usuário clica em "Endereço"
Then  Usuário é redirecionado para uma tela onde ele tem a opção de digitar um novo endereço utilizando os campos Rua, Bairro, Cidade, CEP, Número e Estado ou selecionar o local em um maps.

Cenário: Mudança de dados pessoais
Given Usuário é cadastrado
And Usuário está na tela de perfil do aplicativo
When Usuário clica em "Meus Dados"
Then Usuário é redirecionado para uma tela onde tem a opção de alterar dados como Nome, e-mail, telefone de contato, etc

Cenário: Visualizar pratos e restaurantes favoritos
Given Usuário é cadastrado
And Usuário está na tela de perfil do aplicativo
When Usuário clica em "Favoritos"
Then Usuário é redirecionado para uma página onde é possível visualizar os pratos e os restaurantes que ele marcou como favorito

Cenário: Configurações do aplicativo
Given Usuário é cadastrado
And Usuário está na tela de perfil do aplicativo
When Usuário clica em "Configurações"
Then Usuário é redirecionado para uma página com as seguintes opções: Gerenciar notificações, Sobre esta versão, Limpar histórico de busca, Sair, etc.

Cenário: Chat com restaurantes
Given Usuário é cadastrado
And Usuário está na tela de perfil do aplicativo
When Usuário clica em "Chat"
Then Usuário é redirecionado para uma página com o histórico de conversas entre ele e os restaurantes

Cenário: Página de Ajuda
Given Usuário é cadastrado
And Usuário está na tela de perfil do aplicativo
When Usuário clica em "Ajuda"
Then Usuário é redirecionado para uma página que possui algumas perguntas frequentes, além de poder enviar mensagens para o suporte.

# commit1 na main