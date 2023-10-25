# appbank

Um aplicativo criado apartir de um mockup encontrado no site do Freepik.
![AppBank](https://github.com/luanjc77/AppBank-N1/assets/129614685/8de8f5ea-251c-4932-8419-4498cbe00c39)

Baseando-se nesta imagem, nosso desafio era de recriar estas mesmas telas utilizando a linguagem DART(Flutter) seguindo fielmente o desing proposto, sem se preocupar muito com sua funcionalidade inicialmente, mas sim com a estética.

A ideia do aplicativo em si é que ele possa facilitar as operações bancárias dos clientes, fornecendo acesso seguro a uma variedade de serviços financeiros.

Público-Alvo: 
  Clientes do banco, incluindo pessoas físicas e jurídicas.

Funcionalidades Principais:
  -Autenticação e Segurança: Cadastro seguro de usuários, Autenticação multifatorial (PIN, impressão digital, reconhecimento facial, etc.).
  -Contas e Saldos:Visualização de saldos de contas, Histórico de transações,Transferências internas e externas.
  -Pagamentos e Transferências: Transferências entre contas próprias e de terceiros.  
  -Investimentos: Acesso a informações sobre investimentos disponíveis, Compra e venda de ativos financeiros, Monitoramento de carteira de investimentos.
  -Empréstimos e Crédito: Simulação de empréstimos, Solicitação de empréstimos e cartões de crédito, Pagamento de parcelas de empréstimos.


Nova Atualização (25/10/2023):

Tivemos algumas alterações em telas que já existiam antes e a adição de novas telas -> Agora é possivel adicionar, "procurar", alterar e deletar algum contato que você queira, adicionada uma nova tela, na página de configurações, onde se pode ver a lista de contatos cadastrados e uma nova tela em que você pode gerenciar esse contato, seja criando um novo, alterando um existente ou deletando um que não queira mais.

Também foi mudada a tela de transferências bancárias, agora você pode inserir o nome da pessoa que deseja mandar uma graninha e o valor que ficará salvo na tela de histórico de transferencias, onde você pode consultar para quem e quanto você enviou. Ainda na tela da propria transferência, também se pode alterar uma uma transferência feita, no caso seira o valor, caso tenha enviado um valor errado, ou pode até mesmo deltar essa ultima transferência que foi feita.....NOTA: o dinheiro não vai retornar pra você AINDA hehe, ainda estou trabalhando nessa parte, então certifique-se de mandar o valor certo para a pessoa certa hehe!

![Alt text](image.gif)

#Executando o Projeto

-Certifique-se de que o Flutter esteja na versão 3.10.1;
-Importe o projeto para sua IDE de preferência, eu utilizei o VSCODE (Visual Studio Code);
-Certifique-se de que a IDE esteja com os plugins Flutter e Dart instalados em versões mais atuais;
-Caso esteja utilizando o VSCode e for a primeira vez que estiver abrindo um projeto Flutter nele ,no canto inferior direito aparecerá uma mensagen solicitando mostrar o caminho em que está instalado o Flutter, basta clicar, caso tenha é so mostrar, caso não tenha ele lhe redireciona para o site do flutter e é so instalar;
-Abra o arquivo pubspec.yaml e clique em pub get para que as dependências utilizadas no projeto sejam carregadas;
-Execute a aplicação (pelo VSCode, vá em 'Run and Debug').
