#1.Suponha
#uma tabela "Funcionários" com os atributos: ID do Funcionário (chave
#primária), Nome do Funcionário, Departamento e Localização do Departamento
#(cidade e estado). Determine se esta tabela está em 3FN e explique sua resposta.

#R: A tabela funcionários não está em 3FN, pois, "Localização do Departamento" (cidade e estado) é
#R: determinado pelo "Departamento," que não é uma chave candidata, ou seja, não possuem atributos com características que poderiam ser da chave primária.

#2. Você tem uma tabela "Encomendas" com os seguintes atributos: Número da Encomenda (chave
#primária), ID do Cliente, Nome do Cliente, e Cidade de Entrega. Avalie se esta tabela está em 3FN ou
#não e explique seu raciocínio.

#R: A tabela "Encomendas" não está em 3FN porque o "Nome do Cliente" é determinado pelo "ID doCliente," que não é uma chave candidata a combinação de atributos da tabela não possuí uma identificação única, possivelmente
#R: possivelmente precisando depender de outra tabela.alter

#3 Considere uma tabela "Produtos" com os atributos: ID do Produto (chave primária), Nome do Produto,
#Categoria do Produto e Nome do Fornecedor. Analise se esta tabela está em 3FN ou não e justifique
#sua resposta.

#R: A tabela "Produtos" está em 3FN, pois todos os atributos dependem da tabela produtos, não sendo necessário criar outra tabela para relacionar os atributos.alter

#4 Dada uma tabela "Escolas" com os atributos: ID da Escola (chave primária), Nome da Escola,
#Nome do Diretor e Endereço do Diretor. Determine se esta tabela está em 3FN ou não, e forneça
#uma explicação. 

#R: A tabela escolas não está em 3FN por conta dos atributos "Nome do Diretor e Endereço do diretor" Ambos não pertecem a chave primária, e também não é uma chave candidata.

#5: Suponha uma tabela "Pedidos" com os atributos: Número do Pedido (chave primária), Produto, ID
#do Cliente, Nome do Cliente e Estado do Cliente. Avalie se esta tabela está em 3FN ou não e
# explique por quê.

#R: A tabela não está em 3FN, pois os atributos do cliente precisam de outra tabela, ou seja, não depende da chave primária e ID
#do Cliente, Nome do Cliente e Estado do Cliente não são uma chave candidata, em outras palavras a identificação não é única. 

#6 Você possui uma tabela "Projetos" com os seguintes atributos: ID do Projeto (chave primária),
#Nome do Projeto, ID do Gerente do Projeto, Nome do Gerente e Departamento do Gerente.
#Determine se esta tabela está em 3FN e justifique sua resposta.

#R: A tabela projetos não está em 3FN, pois, os atributos do gerente "ID do Gerente do Projeto, Nome do Gerente e Departamento do Gerente." Não é um atributo pertecente a chave primária
#R: e também não é uma chave candidata. 