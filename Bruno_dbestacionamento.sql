drop database dbEstacionamento;

-- Criar o banco de dados estacionamento

create database dbEstacionamento;

use dbEstacionamento;

-- Criar a tabela carros

create table tbCarros(
codigo int auto_increment,
placa varchar(8),
cor varchar(15),
modelo varchar(15),
ano char(4),
dataEntrada date,
horaEntrada time,
dataSaida date,
horaSaida time,
primary key(codigo)
);


-- Inserir na tabela carros pelo menos 10 registros

insert into tbCarros(placa,cor,modelo,ano,dataEntrada,horaEntrada,dataSaida,horaSaida)
values ('OWL1234','Azul','Citroen','2013','2022/11/10','15:59:00','2022/11/10','16:30:00');

insert into tbCarros(placa,cor,modelo,ano,dataEntrada,horaEntrada,dataSaida,horaSaida)
values ('AXC7865','Verde','Palio','2011','2022/09/10','13:59:00','2022/11/13','14:20:00');

insert into tbCarros(placa,cor,modelo,ano,dataEntrada,horaEntrada,dataSaida,horaSaida)
values ('ABC4567','Preto','Fusca','2015','2022/11/10','15:59:00','2022/11/10','17:50:00');

insert into tbCarros(placa,cor,modelo,ano,dataEntrada,horaEntrada,dataSaida,horaSaida)
values ('AWY0896','Marrom','Ferrari','2022','2022/05/10','15:59:00','2022/11/10','16:20:00');

insert into tbCarros(placa,cor,modelo,ano,dataEntrada,horaEntrada,dataSaida,horaSaida)
values ('QWE6785','Laranja','Porsche','2022','2022/02/10','13:09:00','2022/10/10','15:30:00');

insert into tbCarros(placa,cor,modelo,ano,dataEntrada,horaEntrada,dataSaida,horaSaida)
values ('DSN9786','Cinza','HRV','2018','2022/04/10','15:59:00','2022/11/27','09:46:00');

insert into tbCarros(placa,cor,modelo,ano,dataEntrada,horaEntrada,dataSaida,horaSaida)
values ('OHL4567','Amarelo','Bentley','2019','2022/08/15','15:20:00','2022/09/20','16:45:00');

insert into tbCarros(placa,cor,modelo,ano,dataEntrada,horaEntrada,dataSaida,horaSaida)
values ('HJK0798','Branco','Onix','2014','2022/08/09','14:20:00','2022/11/10','16:10:00');

insert into tbCarros(placa,cor,modelo,ano,dataEntrada,horaEntrada,dataSaida,horaSaida)
values ('RTE2023','Roxo','Gol','2015','2022/10/02','08:00:00','2022/12/10','15:50:00');

insert into tbCarros(placa,cor,modelo,ano,dataEntrada,horaEntrada,dataSaida,horaSaida)
values ('UIL0976','Vermelho','Cronos','2012','2022/05/10','12:05:00','2022/08/10','10:30:00');

-- Alterar pelo menos 5 registros

update tbCarros set cor = 'Amarelo' where codigo = 2;
select * from tbCarros where codigo = 2;

update tbCarros set modelo = 'Kwid' where dataEntrada = '2022/11/10';
select * from tbCarros where dataEntrada = '2022/11/10';

update tbCarros set dataSaida = '2022/10/11' where cor like 'ci%';
select * from tbCarros where cor like 'ci%';

update tbCarros set dataEntrada = '2022/10/03' where placa = 'RTE2023';
select * from tbCarros where placa = 'RTE2023';

update tbCarros set placa = 'WDE2345' where horaSaida = '16:45:00';
select * from tbCarros where horaSaida = '16:45:00';

-- Apagar pelo menos 3 registros
delete from tbCarros where horaSaida = '09:46:00';

delete from tbCarros where codigo = 2;

delete from tbCarros where placa = 'UIL0976';

-- Pesquisar os carros pelo nome
select * from tbCarros where modelo = 'Ferrari';

-- Pesquisar os carros pelo código
select * from tbCarros where codigo = 5;

-- Pesquisar os carros pela data de entrada
select * from tbCarros where dataEntrada = '2022/08/09';

-- Pesquisar os carros pela pela cor
select * from tbCarros where cor = 'Preto';

-- Pesquisar os carros pela pelo modelo
select * from tbCarros where modelo = 'Bentley';












