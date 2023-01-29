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