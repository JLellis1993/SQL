create database exercicios_banco_de_dados;
use segundo_exercicios_banco_de_dados;

#Letra A Defina a Primeira Forma Normal (1FN) em bancos de dados relacionais. #Explique por que a 1FN é importante para a estruturação de dados.
# A primeira forma nominal é muito importante para os bancos de dados, pois com ela pode - se atribuir modelos que sejam indivisiveis, ou seja que não serão repetidos. Ela é muito importante, pois ,
# mantém a integridade dos dados. 

 #Exercicio Letra B
 create table livros(
 id integer primary key auto_increment,
 titulo varchar (50),
 autores varchar (30),
 ano varchar (6) 
 );
 describe livros; 
 insert into livros values
 (null, "Aventuras", "Autor1, Autor2, Autor3","2005"),
 (null,"Romance", "Autor4", "2010"),
 (null, "Ficção Científica", "Autor5, Autor6", "2015");
 select *from livros;
 
 #Exercicio Letra C
#Suponha que você esteja projetando um banco de dados para uma biblioteca.
#Crie uma tabela chamada "Livros" que esteja na 1FN. A tabela deve conter
#informações sobre os livros, incluindo ID do livro, título, autor, ISBN e ano de publicação. 

create table livros_(
id_livro integer primary key auto_increment,
    titulo varchar(50),
    autores varchar(50),
    isbn varchar(20),
    ano_publicacao integer
);
desc livros_;

insert into livros_c values(null, "Aventuras", "Autor1", "999-44-111-000-6", 2005),
(null, "Romance", "Autor4", "777-88-444-555-8", 2010 ),
(null, "Ficção", "Autor7", "888-22-555-666-0", 2015);

select * from livros_c;

#Exercíco D
create table produtos(
id_produto integer primary key auto_increment,
    nome varchar(50),
    categoria varchar(50),
    qnt integer,
    preco double
);

desc produtos;

insert into produtos values(null, "Sabão em pó", "produto de limpeza", 100, 17.00),
(null, "Sombra", "produto de beleza", 50, 25.50),
(null, "Feijão", "Alimentação", 200, 15.20);

select * from produtos;

