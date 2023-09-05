#Considere uma tabela de banco de dados chamada "Pedidos" com os seguintes atributos: 
#ID do Pedido (chave primária), Nome do Cliente, Endereço do Cliente e Produto do Pedido. 
#Explique se esta tabela está em 2FN ou não, e justifique sua resposta.

#Exercicio 01 
create table pedidos(idPedidos int primary key auto_increment, nome varchar(55), endereco varchar(100), produto_pedido int);
#R: Essa tabela não está na segunda forma normal porque ela contém atributos que não dependem do seu id primario (produto_pedido).

#Exercicio 02 
#Você possui uma tabela "Livros" com os seguintes atributos: 
#ISBN (chave primária), Título do Livro, Autor e Editora. 
#Analise se esta tabela está em 2FN ou não, e explique seu raciocínio.
#R: A tabela livros está em 2FN pois os atributos dependem da chave primária, em sua totalidade e não apenas parte dela.

#Exercicio 03 
#Dada
#uma tabela "Funcionários" com os atributos: ID do Funcionário (chave
#primária), Nome do Funcionário, Departamento e Endereço do Departamento,
#determine se a tabela está em 2FN ou não, e forneça uma explicação.
#R: A tabela funcionários não está na segunda forma normal, porque ela contém atributos que não dependem da chave primária como o setor departamento que pode ser por outra exportado de outra tabela.

#Exercicio 04 
#Suponha uma
#tabela "Cursos" com os seguintes atributos: Código do Curso (chave
#primária), Nome do Curso, Professor e Departamento do Professor. Avalie se esta
#tabela está em 2FN ou não e explique sua conclusão.
#R: Esta tabela cursos não corresponde a segunda forma normal, pois os atributos não depende do chave primária que é o código do curso, além disso  o atributo departamento do professor 
#depende parcialmente da chave primária e aparentemente teria que ser criado uma nova tabela. 

#Exercicio 05 
#5.Considere
#uma tabela "Pedidos" com os atributos: Número do Pedido (chave
#primária), Produto, Nome do Cliente e Cidade do Cliente. Determine se esta
#tabela está em 2FN ou não, e dê razões para sua resposta.
 #Essa tabela não está na segunda forma normal porque ela contém atributos que não dependem do seu id primario número do pedido.alter
 
#Exercicio 06 
#Você tem uma tabela "Vendas" com os seguintes atributos: Número da Venda
#(chave primária), Produto Vendido, Nome do Vendedor, Departamento do Vendedor e
#Cidade do Cliente. Avalie se esta tabela está em 2FN ou não e explique por quê.
 #R: Essa tabela também não corresponde a segunda forma normal, pois existem atributos que não depende da chave primária necessitando que haja a criação de uma nova tabela. 
 
 