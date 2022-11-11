--  apagar o banco de dados
drop database dbloja;

-- criando banco de dados
create database dbloja;

-- visualizar o banco de dados
show databases;

-- acessar o banco de dados
use dbloja;

-- criando as tabelas para o banco de dados
create table tbFuncionarios(
codFunc int auto_increment, -- auto increment só pode ser colocado no tipo int
nome varchar(50),
email varchar(50),
cpf char(14), -- unicode = só ocupa o espaço que foi usado
tel char(10),
primary key(codFunc) -- chave primaria da tabela
);

create table tbUsuarios(
codUsu int auto_increment,
nome varchar(15),
senha varchar (14),
primary key(codUsu)
);

create table tbProdutos(
codProd int auto_increment,
descricao varchar(50),
preco decimal(9,2),
validade date,
quantidade int,
tipo varchar(10),
primary key(codProd)
);

-- visualizar as tabelas no banco
show tables;

-- visualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbUsuarios;

-- inserindo valores nas tabelas
insert into tbFuncionarios(nome,email,cpf,tel)
values('Nathan da Silva','nathan.silva@outlook.com','258.247.256-87','97854-0987');

insert into tbFuncionarios(nome,email,cpf,tel)
values('José da Cunha','jose.cunha@outlook.com','254.258.963-77','98741-5824');

insert into tbUsuarios(nome,senha)
values('nathan.silva','123456');

insert into tbUsuarios(nome,senha)
values('jose.cunha','654321');

insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Banana',20.50,'2022-11-07',12,'Dúzia');

insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Melancia',30.00,'2022-11-30',1,'Unidade');

insert into tbProdutos(descricao,preco,validade,quantidade,tipo)
values('Morango',10.50,'2022-11-08',1,'Caixa');

-- visualizando os registros das tabelas 
select * from tbFuncionarios;

select * from tbUsuarios;

select * from tbProdutos;

-- alterando os registros das tabelas 
update tbUsuarios set senha ='687758698' where codUsu = 2;

update tbProdutos set preco = preco * 1.10 where preco > 11.00;

select * from tbUsuarios;

-- excluindo os registros das tabelas
delete from tbUsuarios where codUsu = 2;

select * from tbUsuarios;

-- busca por codigo 
select * from tbProdutos where codProd = 2;

-- busca por nome
select * from tbProdutos where descricao like '%n%';

-- Tipos de like
-- nome% - começa com 
-- %nome - termina com 
-- %nome% - tem no meio


-- source \caminhodapasta\ - executar um scrpit pronto dentro do banco de dados;

-- select descricao as 'Nome',preco * 0.90 as 'Preço' from tbprodutos; - Na apresentação dos dados será acrescido 10% ao 
-- preço dos produtos e com alias no nome das colunas

-- select descricao as 'Nome do produto',preco as 'Preço',
--     -> preco * 1.10 as 'Preço com 10% de aumento' from tbProdutos; - Irá exibir uma coluna virtual (só existe durante a 
-- exibição) chamada de Preço com 10% de aumento

-- select descricao as 'Descrição','Tem no estoque' as 'Status'
--     -> from tbprodutos; - Irá criar uma coluna virtual chamada Status com os valores tem no estoque em todos 
-- os produtos

-- select distinct descricao from tbprodutos; ele mostrará apenas onde na coluna descrição tiver valores diferentes, por exemplo, 
-- caso 2 tipos de bananas estejam cadastradas com preços diferentes ele mostrará apenas uma vez

 


