create database banco_join;
use banco_join;

CREATE TABLE Pessoa (
id INT PRIMARY KEY auto_increment,
nome VARCHAR (50),
data_nascimento date
);

CREATE TABLE Endereco (
id INT PRIMARY KEY auto_increment,
pessoa_id INT,
rua VARCHAR (100),
cidade VARCHAR (50),
estado VARCHAR (50),
FOREIGN KEY (pessoa_id) REFERENCES Pessoa (id)
);

CREATE TABLE Telefone (
id INT PRIMARY KEY auto_increment,
pessoa_id INT,
numero VARCHAR (20),
tipo VARCHAR (20),
FOREIGN KEY (pessoa_id) REFERENCES Pessoa (id)
);

INSERT INTO Pessoa (nome, data_nascimento) VALUES ('João Silva', '1990-05-15');
INSERT INTO Pessoa (nome, data_nascimento) VALUES ('Maria Santos', '1985-12-10');
INSERT INTO Pessoa (nome, data_nascimento) VALUES ('Pedro Oliveira', '1995-08-22');
INSERT INTO Pessoa (nome, data_nascimento) VALUES ('Ana Souza', '1982-03-30');
INSERT INTO Pessoa (nome, data_nascimento) VALUES ('Carlos Pereira', '1998-07-18');

INSERT INTO Endereco (pessoa_id, rua, cidade, estado) VALUES (1, 'Rua A', 'São Paulo', 'SP');
INSERT INTO Endereco (pessoa_id, rua, cidade, estado) VALUES (2, 'Rua B', 'Rio de Janeiro', 'RJ');
INSERT INTO Endereco (pessoa_id, rua, cidade, estado) VALUES (3, 'Rua C', 'Belo Horizonte', 'MG');
INSERT INTO Endereco (pessoa_id, rua, cidade, estado) VALUES (4, 'Rua D', 'Salvador', 'BA');
INSERT INTO Endereco (pessoa_id, rua, cidade, estado) VALUES (5, 'Rua E', 'Porto Alegre', 'RS');

INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (1, '(11) 98765-4321', 'Celular');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (2, '(21) 99876-5432', 'Celular');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (3, '(31) 98765-1234', 'Celular');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (4, '(71) 99876-2345', 'Celular');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (5, '(51) 98765-3456', 'Celular');

INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (1, '(11) 5555-1234', 'Residencial');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (2, '(21) 3333-9876', 'Comercial');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (3, '(31) 7777-5678', 'Celular Secundário');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (4, '(71) 4444-7890', 'Residencial');
INSERT INTO Telefone (pessoa_id, numero, tipo) VALUES (5, '(51) 6666-2345', 'Comercial'); 

SELECT Pessoa.nome, Telefone.numero From Pessoa
INNER JOIN Telefone ON Pessoa.id = Telefone.pessoa_id;

SELECT Pessoa.nome, Endereco.rua, Endereco.cidade FROM Pessoa
LEFT JOIN Endereco on Pessoa.id= Endereco.pessoa_id;

SELECT Pessoa.nome, Endereco.rua, Endereco.cidade
FROM Endereco RIGHT JOIN Pessoa ON Pessoa. id = Endereco. pessoa_id;

SELECT Pessoa.nome, Endereco.rua, Endereco.cidade, Telefone.numero 
FROM pessoa right JOIN Endereco
ON Pessoa.id= Endereco. pessoa_id LEFT JOIn Telefone
On Pessoa.id = Telefone. pessoa_id;

#Exercicios Join
#Suponha que você tem duas tabelas: "Clientes" e "Pedidos". Crie uma consulta que liste todos os
#pedidos juntamente com o nome do cliente que fez cada pedido usando um INNER JOIN








