#Exercicio join
#Atividade A

CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

#Criação da tabela pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

insert into cliente (id, nome) values ("1", "Julia", "lellis@gmail.com");
insert into cliente (id, nome) values ("2","Luan", "luan@gmail.com");
insert into cliente (id, nome) values ("3" "Cinthia", "cinthia@gmail.com");

insert into pedidos (id ,cliente,valor, data_pedido) values ( "1", "Julia", "100,00", " 2023- 10 - 04");
insert into pedidos (id ,cliente,valor, data_pedido) values ( "2", "Luan", "150,00", " 2023- 10 - 08");
insert into pedidos (id ,cliente,valor, data_pedido) values ( "3", "Cinthia", "170,00", " 2023- 10 - 12");

#Atividade B
CREATE TABLE Departamentos ( ID INT PRIMARY KEY, Nome VARCHAR(255) );

CREATE TABLE Funcionarios ( ID INT PRIMARY KEY, Nome VARCHAR(255), DepartamentoID INT, FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(ID) );

INSERT INTO Departamentos (ID, Nome) VALUES (1, "TI"), (2, "Enfermagem"), (3, "Medicina"), (4, "Marketing");

INSERT INTO Funcionarios (ID, Nome, DepartamentoID) VALUES (1, "Joana Morais", 1), (2, "Julia lellis", 2), (3, "Thamires Machado", 3), (4, "Fernanda Mendez", 4), (5, "Rodrigo Von", NULL);

SELECT Funcionarios.Nome, Departamentos.Nome AS NomeDepartamento FROM
Funcionarios LEFT JOIN Departamentos ON Funcionarios.DepartamentoID =
Departamentos.ID;

#Atividade C

CREATE TABLE Produtos (ID INT PRIMARY KEY, Nome VARCHAR(255));

CREATE TABLE Vendas (ID INT PRIMARY KEY, ProdutoID INT, Quantidade INT, FOREIGN KEY (ProdutoID) REFERENCES Produtos(ID));

INSERT INTO Produtos (ID, Nome) VALUES (1, "Televisão"), (2, "Smartphone"), (3, "Tablet"), (4, "Smartwatch");

INSERT INTO Vendas (ID, ProdutoID, Quantidade) VALUES (1, 1, 20), (2, 2, 21), (3, 3, 25), (4, 4, 22), (5, NULL, 5);

SELECT Produtos.Nome, Vendas.Quantidade FROM Produtos RIGHT JOIN Vendas ON
Produtos.ID = Vendas.ProdutoID;

 

