drop database db_cds;

-- Crie uma database com o nome DB_CDS
create database db_cds;

-- Conectar-se a database DB_CDS
use db_cds;

 -- Crie as tabelas especificadas a seguir com as respectivas constraints
 create table ARTISTAS(
 cod_art int not null auto_increment,
 nome_art varchar(100) not null unique,
 primary key(cod_art)
);

create table GRAVADORAS(
cod_grav int not null auto_increment,
nome_grav varchar(50) not null unique,
primary key(cod_grav)
);

create table CATEGORIAS(
cod_cat int not null auto_increment,
nome_cat varchar(50) not null unique,
primary key(cod_cat)
);

create table ESTADOS(
sigla_est char(2) not null,
nome_est varchar(50) not null unique,
primary key(sigla_est) 
);

create table CIDADES(
cod_cid int not null auto_increment,
sigla_est char(2) not null,
nome_cid varchar(50) not null,
primary key(cod_cid),
foreign key(sigla_est) references ESTADOS(sigla_est)
);

create table CLIENTES(
cod_cli int not null auto_increment,
cod_cid int not null,
nome_cli varchar(50) not null,
end_cli varchar(100) not null,
renda_cli decimal(9,2) not null default 0 check(renda_cli >= 0),
sexo_cli char(1) not null default  'F' check(sexo_cli in('F','M')),
primary key(cod_cli),
foreign key(cod_cid) references CIDADES(cod_cid)
);

create table CONJUGES(
cod_conj int not null auto_increment,
cod_cli int not null,
nome_conj varchar(50) not null,
renda_conj decimal(9,2) not null default 0 check(renda_conj >= 0),
sexo_conj char(1) not null default 'F' check(sexo_conj in('F','M')),
primary key(cod_conj),
foreign key(cod_cli) references CLIENTES(cod_cli)
);

create table FUNCIONARIOS(
cod_func int not null auto_increment,
nome_func varchar(50) not null,
end_func varchar(100) not null,
sal_func decimal(9,2) not null default 0 check(sal_func >= 0),
sex_func char(1) not null default 'F' check(sex_func in('F','M')),
primary key(cod_func)
); 

create table DEPENDENTES(
cod_dep int not null auto_increment,
cod_func int not null,
nome_dep varchar(100) not null,
sexo_dep char(1) not null default 'F' check(sexo_dep in('F','M')),
primary key(cod_dep),
foreign key(cod_func) references FUNCIONARIOS(cod_func)
);

create table TITULOS(
cod_tit int not null auto_increment,
cod_cat int not null,
cod_grav int not null,
nome_cd varchar(50) not null unique,
val_cd decimal(9,2) not null check(val_cd > 0),
qtd_estq int not null check(qtd_estq >= 0),
primary key(cod_tit),
foreign key(cod_cat) references CATEGORIAS(cod_cat),
foreign key(cod_grav) references GRAVADORAS(cod_grav)
);

create table PEDIDOS(
num_ped int not null auto_increment,
cod_cli int not null,
cod_func int not null,
data_ped datetime not null,
val_ped decimal(9,2) not null default 0 check(val_ped >= 0),
primary key(num_ped),
foreign key(cod_cli) references CLIENTES(cod_cli),
foreign key(cod_func) references FUNCIONARIOS(cod_func)
);

create table TITULOS_PEDIDO(
num_ped int not null,
cod_tit int not null,
qtd_cd int not null check(qtd_cd >= 1),
val_cd decimal (9,2) not null check(val_cd >= 0),
primary key(num_ped,cod_tit),
foreign key(num_ped) references PEDIDOS(num_ped),
foreign key(cod_tit) references TITULOS(cod_tit)
);

create table TITULOS_ARTISTA(
cod_tit int not null,
cod_art int not null,
foreign key(cod_tit)references TITULOS(cod_tit),
foreign key(cod_art)references ARTISTAS(cod_art)
);

-- Agora insira os seguintes dados nas respectivas tabelas:
insert into ARTISTAS(nome_art)values('MARISA MONTE');
insert into ARTISTAS(nome_art)values('GILBERTO GIL');
insert into ARTISTAS(nome_art)values('CAETANO VELOSO');
insert into ARTISTAS(nome_art)values('MILTON NASCIMENTO');
insert into ARTISTAS(nome_art)values('LEGI??O URBANA');
insert into ARTISTAS(nome_art)values('THE BEATLES');
insert into ARTISTAS(nome_art)values('RITA LEE');

insert into GRAVADORAS(nome_grav)values
('POLYGRAM'),
('EMI'),
('SOM LIVRE'),
('SOM MUSIC');

insert into CATEGORIAS(nome_cat)values
('MPB'),
('TRILHA SONORA'),
('ROCK INTERNACIONAL'),
('ROCK NACIONAL');

insert into ESTADOS(sigla_est,nome_est)values
('SP','S??O PAULO'),
('MG','MINAS GERAIS'),
('RJ','RIO DE JANEIRO'),
('ES','ESPIRITO SANTO');

insert into CIDADES(sigla_est,nome_cid)values
('SP','S??O PAULO'),
('SP','SOROCABA'),
('SP','JUNDIA??'),
('SP','AMERICANA'),
('SP','ARARAQUARA'),
('MG','OURO PRETO'),
('ES','CACHOEIRA DO ITAPEMIRIM');

insert into CLIENTES(cod_cid,nome_cli,end_cli,renda_cli,sexo_cli)values
(1,'JOS?? NOGUEIRA','RUA A',1500.00,'M'),
(1,'ANJELO PEREIRA','RUA B',2000.00,'M'),
(1,'AL??M MAR PARANHOS','RUA C',1500.00,'M'),
(1,'CATARINA SOUZA','RUA D',892.00,'F'),
(1,'VAGNER COSTA','RUA E',950.00,'M'),
(2,'ANTENOR DA COSTA','RUA F',1582.00,'M'),
(2,'MARIA AM??LIA DE SOUZA','RUA G',1152.00,'F'),
(2,'PAULO ROBERTO SILVA','RUA H',3250.00,'M'),
(3,'F??TIMA SOUZA','RUA I',1632.00,'F'),
(3,'JOEL DA ROCHA','RUA J',2000.00,'M');

insert into CONJUGES(cod_cli,nome_conj,renda_conj,sexo_conj)values
(1,'CARLA NOGUEIRA',2500.00,'F'),
(2,'EMILIA PEREIRA',5500.00,'F'),
(6,'ALTIVA DA COSTA',3000.00,'F'),
(7,'CARLOS DE SOUZA',3250.00,'M');

insert into FUNCIONARIOS(nome_func,end_func,sal_func,sex_func)values
('V??NIA GABRIELA PEREIRA','RUA A',2500.00,'F'),
('NORBERTO PEREIRA DA SILVA','RUA B',300.00,'M'),
('OLAVO LINHARES','RUA C',580.00,'M'),
('PAULA DA SILVA','RUA D',3000.00,'F'),
('ROLANDO ROCHA','RUA E',2000.00,'M');

insert into DEPENDENTES(cod_func,nome_dep,sexo_dep)values
(1,'ANA PEREIRA','F'),
(1,'ROBERTO PEREIRA','M'),
(1,'CELSO PEREIRA','M'),
(3,'BRISA LINHARES','F'),
(3,'MARI SOL LINHARES','F'),
(4,'SONIA DA SILVA','F');


insert into TITULOS(cod_cat,cod_grav,nome_cd,val_cd,qtd_estq)values
(1,1,'TRIBALISTAS',30.00,1500),
(1,2,'TROPIC??LIA',50.00,500),
(1,1,'AQUELE ABRA??O',50.00,600),
(1,2,'REFAZENDA',60.00,1000),
(1,3,'TOTALMENTE DEMAIS',50.00,2000),
(1,3,'TRAVESSIA',55.00,500),
(1,2,'COURAGE',30.00,200),
(4,3,'LEGI??O URBANA',20.00,100),
(3,2,'THE BEATLES',30.00,300),
(4,1,'RITA LEE',30.00,500);


insert into PEDIDOS(cod_cli,cod_func,data_ped,val_ped)values
(1,2,'02/05/02',1500.00),
(3,4,'02/05/02',50.00),
(4,5,'02/06/02',100.00),
(1,4,'02/02/03',200.00),
(7,5,'02/03/03',300.00),
(4,4,'02/03/03',100.00),
(5,5,'02/03/03',50.00),
(8,2,'02/03/03',50.00),
(2,2,'02/03/03',2000.00),
(7,1,'02/03/03',3000.00);

insert into TITULOS_ARTISTA(cod_tit,cod_art)values
(1,1),
(2,2),
(3,2),
(4,2),
(5,3),
(6,4),
(7,4),
(8,5),
(9,6),
(10,7);

insert into TITULOS_PEDIDO(num_ped,cod_tit,qtd_cd,val_cd)values
(1,1,2,30.00),
(1,2,3,20.00),
(2,1,1,50.00),
(2,2,3,30.00),
(3,1,2,40.00),
(4,2,3,20.00),
(5,1,2,25.00),
(6,2,3,30.00),
(6,3,1,35.00),
(7,4,2,55.00),
(8,1,4,60.00),
(9,2,3,15.00),
(10,7,2,15.00);