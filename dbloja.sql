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

-- visualizando os registros das tabelas 
select * from tbFuncionarios;

select * from tbUsuarios;

-- alterando os registros das tabelas 
update tbUsuarios set senha ='687758698' where codUsu = 2;

select * from tbUsuarios;

-- excluindo os registros das tabelas
delete from tbUsuarios where codUsu = 2;

select * from tbUsuarios;