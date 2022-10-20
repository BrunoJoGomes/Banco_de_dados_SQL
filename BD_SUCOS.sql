create database if not exists sucos;

-- usar o banco de dados
use sucos;

-- para criar uma tabela é preciso ter pelo menos uma coluna
create table tbcliente
(CPF varchar (11),
NOME varchar (100),
ENDERECO1 varchar (150),
ENDERECO2 varchar (150),
BAIRRO varchar (50),
CIDADE varchar (50),
ESTADO varchar (2),
CEP varchar (8),
IDADE smallint,
SEXO varchar (1),
LIMITE_CREDITO float,
VOLUME_COMPRA float,
PRIMEIRA_COMPRA bit);

create table tbproduto
(PRODUTO varchar (20),
NOME varchar (150),
EMBALAGEM varchar (50),
TAMANHO varchar (50),
SABOR varchar (50),
PRECO_LISTA float);

/* ver o que tem na tabela */
select * from tbcliente; 

-- Inserir dados nas tabelas 
insert into tbproduto(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
values
('1040107', 'Light - 350 ml - Melancia', 'Lata', '350 ml', 'Melancia', 4.56);

insert into tbproduto(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
values
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01);

insert into tbproduto(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
values
('1000889', 'Sabor da montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31);

insert into tbproduto(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
values
('1004327', 'Videira do campo - 1,5 Litros - Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51);

insert into tbproduto(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
values
('544931', 'Frescor do verão - 350 ml - Limão', 'PET', '350 ml', 'Limão', 3.20);

insert into tbproduto(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
values
('1078680', 'Frescor do verão - 470 ml - Manga', 'Lata', '470 ml', 'Manga', 5.18);

select * from tbproduto; 

-- atualizar os dados de uma tabela 
update tbproduto set EMBALAGEM = 'Lata', PRECO_LISTA = 2.46 where PRODUTO = '544931';

update tbproduto set EMBALAGEM  = 'Garrafa' where PRODUTO = '1078680';

-- alterar tabela e adicionar chave primária (identificador unico, atributo determinante)
alter table tbproduto add primary key (PRODUTO);

select * from tbcliente;

alter table tbcliente add column (DATA_NASCIMENTO date);


insert into tbcliente (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
values
('00388934505', 'João da Silva', 'Rua Projeta A número 10', '', 'Vila Roman', 'Caratinga', 'AM', '06836001', 30, 'M', 1000.000, 2000, 0, '1989-10-05');

insert into tbcliente (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
values
('00123456789', 'Bruno José', 'Rua romana número 70', '', 'Campo limpo', 'São Paulo', 'SP', '01234567', 25, 'M', 10000, 3000, 0, '2001-05-27');

insert into tbcliente (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO)
values
('00987654321', 'Carla Josefina', 'Rua palmas número 95', '', 'Jardim Olinda', 'São Paulo', 'SP', '56438976', 32, 'F', 100000, 4000, 0, '1990-02-05');










