-- Cria database turma 106
create database turma106;
create database turma106A;

/*
Comentário de múltiplas linhas
*/

-- Deleta database turma106A
drop database turma106A; 

-- CTRL + ENTER = executa o comando da mesma linha

-- Criar tabelas

-- Escolher database que deve ser usada 
use turma106;
create table alunos
( nome varchar(100), 
idade smallint,
sexo char(1),
cpf varchar (11)
); -- criar as colunas da tabela

-- Abrir a tabela
select * from alunos;

-- Inserir dados nas tabelas
insert into alunos (nome, idade, sexo, cpf) values ('Cláudio', 30, 'M', '00000000000');
insert into alunos (nome, idade, sexo, cpf) values ('Marcos', 40, 'M', '11111111111');
insert into alunos (nome, idade, sexo, cpf) values ('Fernanda', 20, 'F', '22222222222');

-- CTRL + D = duplica linha

drop table alunos;
