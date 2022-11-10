DROP DATABASE dbProdutos;

CREATE DATABASE dbProdutos;

USE dbProdutos;

CREATE TABLE PRODUTOS 
( 
 CODIGO INT, 
 NOME VARCHAR(50), 
 TIPO VARCHAR(25), 
 QUANTIDADE INT, 
 VALOR DECIMAL(10,2) 
);

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,
'IMPRESSORA', 'INFORMATICA', 200, 600.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,
'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3,'DVD PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,
'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,
'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,
'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,
'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,
'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,
'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,
'MOUSE', 'INFORMATICA', 400, 60.00 );

DESC PRODUTOS;

SELECT * FROM PRODUTOS;

-- pesquisa com a clausula where
-- select nome, tipo from where tipo = 'informatica';

-- busca por codigo
-- select nome, tipo from where codigo = 5;

-- busca por valor
-- select * from produtos where valor > 400 and valor < 600;

-- select * from produtos where valor > 400 or valor < 600;

-- select * from produtos where nome = 'morango' or valor < 600;

-- select * from produtos where tipo in('informatica','telefone'); -- buscar todos produtos que são de tipo ou informatica ou telefone


-- select * from produtos where valor between 400 and 600;

-- select * from produtos where valor not between 400 and 600;

-- busca por nome 
-- select * from produtos where nome like '%a';
-- select * from produtos where tipo not like 't%';

-- atualizar valores
-- update produtos set valor = valor * 1.10 where tipo = 'digitais';
-- update produtos set valor = valor * 0.80 where nome like '%u%';

-- update produtos set quantidade = quantidade + 8 where tipo = 'eletronicos';
-- select * from produtos where tipo = 'eletronicos';

-- update produtos set valor = valor * 1.05 where tipo = 'eletronicos' and valor < 600;
-- select * from produtos where tipo = 'eletronicos' and valor < 600;

-- query = consulta

