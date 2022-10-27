create database ZOOLOGICO;
use ZOOLOGICO;

create table Animais(
CODIGO int,
TIPO char(15),
NOME char(30),
IDADE tinyint,
VALOR decimal(10,2)
);

insert into Animais(CODIGO, TIPO, NOME, IDADE, VALOR) values (1, 'Cachorro', 'Djudi', 3, '300.00');
insert into Animais(CODIGO, TIPO, NOME, IDADE, VALOR) values (2, 'Cachorro', 'Sula', 5, '300.00');
insert into Animais(CODIGO, TIPO, NOME, IDADE, VALOR) values (3, 'Cachorro', 'Sarina', 7, '300.00');
insert into Animais(CODIGO, TIPO, NOME, IDADE, VALOR) values (4, 'Gato', 'Pipa', 2, '500.00');
insert into Animais(CODIGO, TIPO, NOME, IDADE, VALOR) values (5, 'Gato', 'Saranague', 2, '500.00');
insert into Animais(CODIGO, TIPO, NOME, IDADE, VALOR) values (6, 'Gato', 'Clarences', 1, '500.00');
insert into Animais(CODIGO, TIPO, NOME, IDADE, VALOR) values (7, 'Coruja', 'Agnes', 0, '700.00');
insert into Animais(CODIGO, TIPO, NOME, IDADE, VALOR) values (8, 'Coruja', 'Arabela', 1, '700.00');
insert into Animais(CODIGO, TIPO, NOME, IDADE, VALOR) values (9, 'Sapo', 'Quash', 1, '100.00');
insert into Animais(CODIGO, TIPO, NOME, IDADE, VALOR) values (10, 'Peixe', 'Fish', 0, '100.00');

select * from Animais;

select TIPO, NOME from Animais;

select TIPO, NOME, IDADE from Animais;

select TIPO as 'Tipo do animal', NOME as 'Nome do animal' from Animais;

select TIPO as 'Tipo do animal', NOME as 'Nome do animal', IDADE as 'Tempo de vida' from Animais;

alter table Animais add column (PROCEDENCIA char(17)); 

update Animais set PROCEDENCIA = 'Animal Doméstico'; 

select PROCEDENCIA, TIPO, NOME, IDADE as 'TEMPO DE VIDA' from Animais;

alter table Animais add column (VENDA decimal(10,2));

update Animais set VENDA = '330.00' where valor = '300.00';
update Animais set VENDA = '550.00' where valor = '500.00';
update Animais set VENDA = '770.00' where valor = '700.00';
update Animais set VENDA = '110.00' where valor = '100.00';

select TIPO, NOME, IDADE, VALOR as 'VALOR ORIGINAL', VENDA as 'VALOR DE VENDA' from Animais;

select TIPO, VALOR as 'VALOR ORIGINAL', VENDA as 'VALOR DE VENDA' from Animais;

-- Método mais fácil
-- update Animais set VENDA = VALOR + VALOR * 0.1;



