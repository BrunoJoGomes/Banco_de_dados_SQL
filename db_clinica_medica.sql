drop database db_clinica_medica;

create database db_clinica_medica;

use db_clinica_medica;

create table pacientes(
id_paciente int not null auto_increment,
nm_paciente varchar(45),
tel_paciente varchar(10),
convenio_paciente varchar(45),
primary key(id_paciente)
);

create table medicos(
id_medico int not null auto_increment,
nome_medico varchar(45),
tel_medico varchar(10),
primary key(id_medico)
);

create table receita_medica(
id_receita int not null auto_increment,
descricao varchar(500),
primary key(id_receita)
);

create table consulta(
id_consulta int not null auto_increment,
data_consulta datetime,
id_paciente int not null,
id_medico int not null,
id_receita int not null,
primary key(id_consulta),
foreign key(id_paciente) references pacientes(id_paciente),
foreign key(id_medico) references medicos(id_medico),
foreign key(id_receita) references receita_medica(id_receita)
);