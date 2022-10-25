use sucos_vendas;
select * from tabela_de_clientes;

select embalagem, tamanho from tabela_de_produtos;

-- Comando que tras apenas as emblagem com tamanhos distintos
select distinct embalagem, tamanho from tabela_de_produtos;

select distinct embalagem, tamanho from tabela_de_produtos;

-- O comando retorna a partirdo 4 dado os 3 próximos
select * from tabela_de_produtos limit 4, 3;

-- Ordenar do menor para o o maior preço
select * from tabela_de_produtos order by preco_de_lista;

-- Ordenar do maior para o menor preço 
select * from tabela_de_produtos order by preco_de_lista desc;

select * from tabela_de_produtos order by nome_do_produto;
select * from tabela_de_produtos order by nome_do_produto desc;

select * from tabela_de_produtos order by embalagem desc, nome_do_produto asc;

-- Ver limite de credito por estado dos clientes
select estado, limite_de_credito from tabela_de_clientes;

-- Somar limite de credito por cada estado
select estado, sum(limite_de_credito) from tabela_de_clientes;

select embalagem, Max(preco_de_lista) as maior_preco from tabela_de_produtos;
select embalagem, Min(preco_de_lista) as menor_preco from tabela_de_produtos;

-- Ver quantidade de cada produto (nesse caso ele só retornará o primeiro item)
select embalagem, count(*) as contador from tabela_de_produtos;

select embalagem, count(*) as contador from tabela_de_produtos group by embalagem; -- Retornará a quantidade de cada embalagem registrada no banco de dados

select bairro, sum(limite_de_credito) as limite from tabela_de_clientes group by bairro; -- Retornará o limite de credito por cada bairro

select bairro, sum(limite_de_credito) as limite from tabela_de_clientes where cidade='Rio de janeiro' group by bairro;
select bairro, sum(limite_de_credito) as limite from tabela_de_clientes where cidade='Rio de janeiro' group by estado, bairro order by bairro;

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes where soma_de_limite > 90000 group by estado; -- Não funcionou

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes group by estado having sum(limite_de_credito) > 90000;

select embalagem, max(preco_de_lista) as maior_preco, min(preco_de_lista) as menor_preco from tabela_de_produtos group by embalagem;

select embalagem, max(preco_de_lista) as maior_preco, min(preco_de_lista) as menor_preco from tabela_de_produtos group by embalagem having sum(preco_de_lista) <= 80;

select nome_do_produto, preco_de_lista,
case 
	when preco_de_lista >= 12 then 'Caro'
	when preco_de_lista >= 7 and preco_de_lista < 12 then 'Em conta'
    else 'Barato'
end as status_preco 
from tabela_de_produtos;

select nome_do_produto, preco_de_lista,
case 
	when preco_de_lista >= 12 then 'Tipo 03 - Caro'
	when preco_de_lista >= 7 and preco_de_lista < 12 then 'Tipo 02 - Em conta'
    else 'Tipo 01 - Barato'
end as status_preco 
from tabela_de_produtos
order by status_preco;

-- Pegar dados de duas tabelas diferentes
select * from tabela_de_vendedores;
select * from notas_fiscais;

select * from tabela_de_vendedores as A inner join notas_fiscais B on a.matricula = b.matricula; -- O item matricula é chave primária da tabela vendedores e chave estrangeiras da tabela de notas

-- select * from tabela_de_vendedores as A inner join notas_fiscais B on a.matricula = b.matricula group by a.matribula, a.nome;









