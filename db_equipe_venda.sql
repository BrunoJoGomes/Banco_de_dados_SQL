drop database db_equipe_venda;

create database db_equipe_venda;

use db_equipe_venda;

create table equipes(
id_eq int not null auto_increment,
nome_equipe varchar(50),
primary key(id_eq)
);

create table vendedores(
id_vendedor int not null auto_increment,
nome_func varchar(45),
primary key(id_vendedor)
);

create table produtos(
id_prod int not null auto_increment,
nome_prod varchar(45),
primary key(id_prod)
);

create table vendas(
id_venda int not null auto_increment,
id_vendedor int not null,
id_prod int not null,
id_eq int not null,
primary key(id_venda),
foreign key(id_vendedor) references vendedores(id_vendedor),
foreign key(id_prod) references produtos(id_prod),
foreign key(id_eq) references equipes(id_eq)
);

