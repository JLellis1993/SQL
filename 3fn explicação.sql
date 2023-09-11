create database terceira_forma_normal;
use terceira_forma_normal;

create table cliente(
idcliente int primary key auto_increment,
nome_cliente varchar (255)
);

create table cidade( 
idcidade int primary key auto_increment, 
cidade varchar (150),
estado varchar (2)
);
alter table cidade add id_cliente int; 
alter table cidade add constraint fk_id_cliente_cidade 
foreign key ( id_cliente) references cliente (idcliente);

create table produto(
idproduto int primary key auto_increment,
nome_produto varchar (100),
quantidade int, 
valor double 
);
create table pedido(
idpedido int primary key auto_increment,
id_cliente int,
id_produto int,
constraint FK_id_cliente
foreign key (id_cliente) references cliente (idcliente),
constraint Fk_id_produto 
foreign key (id_produto) references produto (idproduto)
);  
INSERT INTO cliente (nome_cliente) VALUES
('Julia Lellis'),
('Luan Maruk '),
('Cinthia Bello'),
('Josi Lins '),
('Giovanni Chaves'),
('Miguel Arango'),
('Mia Colluci '),
('Roberta Pardo '),
('Diego Bustamanch'),
('Madonna Lellis');

INSERT INTO produto (nome, quantidade, valor) VALUES
('Caneta', 10, 12.50),
('Lápis', 20, 2.50),
('Caderno', 5, 15.00),
('Borracha', 30, 0.85),
('Apontador', 15, 1.00),
('Régua', 8, 1.00),
('Mochila', 3, 40.00),
('Estojo', 6, 90.00),
('Lapiseira', 12, 4.00),
('Grafite', 25, 2.00);


INSERT INTO cidade (cidade, estado, id_cliente) VALUES
('Brasília', 'DF', 1),
('São Paulo', 'SP', 2),
('Rio de Janeiro', 'RJ', 3),
('Mato Grosso Sul ', 'MS', 4),
('Salvador', 'BA', 5),
('Curitiba', 'PR', 6),
('Porto Alegre', 'RS', 7),
('Maranhão', 'MA', 8),
('Fortaleza', 'CE', 9),
('Manaus', 'AM', 10);

INSERT INTO pedido (id_cliente, id_produto) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

SELECT * FROM pedido;