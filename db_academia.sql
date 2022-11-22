drop database db_academia;

create database db_academia;

use db_academia;

create table atividades(
id_atividade int not null auto_increment,
nome_atividade varchar(45),
primary key(id_atividade)
);

create table instrutores(
rg_instrutor varchar(12) not null,
nome_instrutor varchar(45),
nascimento_inst date,
titulacao_inst varchar(45),
telefone_inst varchar(10),
primary key(rg_instrutor)
);

create table alunos(
id_aluno int not null auto_increment,
data_matricula date,
nome_aluno varchar(45),
endereco_aluno varchar(45),
telefone_aluno varchar(10),
nascimento_aluno date,
altura_aluno decimal(2,1),
peso_aluno decimal(3,2),
primary key(id_aluno)
);

create table monitores(
rg_monitor varchar(12) not null,
id_aluno int not null,
primary key(rg_monitor),
foreign key(id_aluno) references alunos(id_aluno)
);

create table turmas(
id_turma int not null auto_increment,
id_aluno int not null,
id_atividade int not null,
rg_instrutor varchar(12) not null,
rg_monitor varchar(12),
quant_alunos int,
horario_aula datetime,
duracao_aula datetime,
data_inicio date,
data_fim date,
primary key(id_turma),
foreign key(id_aluno) references alunos(id_aluno),
foreign key(id_atividade) references atividades(id_atividade),
foreign key(rg_instrutor) references instrutores(rg_instrutor),
foreign key(rg_monitor) references monitores(rg_monitor)
);

create table registros(
id_registro int not null auto_increment,
id_turma int not null,
id_aluno int not null,
ausencia int,
primary key(id_registro),
foreign key(id_turma) references turmas(id_turma),
foreign key(id_aluno) references alunos(id_aluno)
);