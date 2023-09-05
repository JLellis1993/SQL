create database exemplo_segunda_forma_normal;
use exemplo_segunda_forma_normal;

create table pedidos(
idpedido int primary key auto_increment, 
nome_produto varchar (255),
preco double, 
quantidade int,
id_cliente int,
Constraint FK_Id_cliente 
foreign key (id_cliente) references cliente (idcliente)
);

create table cliente (
idcliente int primary key auto_increment,
nome varchar (150),
data_nascimento varchar (200),
cpf varchar(14) unique, 
genero varchar (10)
);


insert into ciente values (null, "Julia", "04/10/1993", "056.424.211-78", "feminino");

insert into pedidos values (null, "camisa polo", 150.99, 2, 1);
