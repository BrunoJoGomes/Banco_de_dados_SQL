drop database dbEmpresa;

create database dbEmpresa;

use dbEmpresa;

-- regra: a primeira tabela criada deve ser a tabela que nao tem dependencia de nenhuma outra

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique, -- nao pode ser repetido dentro do banco
salario decimal(9,2) not null default 0 check(salario >= 0),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codFunc)
);

-- a chave primaria de uma tabela será chave estrangeira da outra

-- para existir um usuario é preciso de um funcionario

-- a tabela usuario é dependente da tabela funcionarios

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(20) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc)
);

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
cnpj char(18),
inscrEst char(15),
email varchar(100),
telefone char(10),
primary key(codForn)
);

-- para acessar os produtos é preciso de um usuario
-- para existir um produto é preciso de um fornecedor

create table tbProdutos(
codProd int not null auto_increment, -- campo obrigatorio
descricao varchar(100),
quantidade int default 0 check(quantidade >= 0), -- caso nenhum valor seja colocado, o campo assumira valor 0.  Não será permitido valores menores que 0
valor decimal(9,2) check(valor >= 0),
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn) 
);

create table tbClientes(
codCli int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
telefone char(10),
primary key(codCli)
);

create table tbVendas(
codVend int not null auto_increment,
codProd int not null,
codCli int not null,
codUsu int not null,
dataVenda date,
horaVenda time,
quantidade int,
primary key(codVend),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codCli),
foreign key(codUsu)references tbUsuarios(codUsu)
);

desc tbProdutos;
desc tbUsuarios;
desc tbFuncionarios;
desc tbFornecedores;
desc tbClientes;
desc tbVendas;

-- inserçoes sempre no final do codigo
-- os inserts nao devem ser feitos nas tabelas dependentes antes da tabela pai

insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values('Paulo Miranda da Silva','paulo.msilva@hotmail.com','258.247.248-00','1500.00','M');

insert into tbFuncionarios(nome,email,cpf,salario,sexo)
values('Laura Joaquina dos Santos','laura.jsantos@hotmail.com','247.278.098-01','2000.00','F');

insert into  tbUsuarios(nome,senha,codFunc)
values('paulo.msilva','123456',1);

insert into  tbUsuarios(nome,senha,codFunc)
values('laura.jsantos','687954',2);

insert into tbFornecedores(nome,cnpj,inscrEst,email,telefone)
values('Fabricantes S/A','25.147.235.0001/38','253.235.147-110','sac@empresa.com.br','97485-8574');

insert into tbProdutos(descricao,quantidade,valor,codForn)
values('Banana',12,10.35,1);

insert into tbProdutos(descricao,quantidade,valor,codForn)
values('Manga',15,20.00,1);

insert into tbClientes(nome,email,cpf,telefone)
values ('Maria Josefina','maria@hotmail.com','456.455.765.89','95768-0925');

insert into tbVendas(codProd,codCli,codUsu,dataVenda,horaVenda,quantidade)
values(2,1,2,'2022/11/17','15:42:02',10);

select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbFornecedores;
select * from tbProdutos;
select * from tbClientes;
select * from tbVendas;
