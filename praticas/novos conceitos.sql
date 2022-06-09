use venda;
-- diferente = distinct

select sum(totalVenda) total from venda;
select distinct totalVenda total from venda;

-- group by = agrupado por

select cliente.nome, sum(totalvenda) total from cliente join venda on fkcliente = idcliente group by nome;

select fkcliente, sum(totalvenda) from venda group by fkcliente;

-- subquery 

select truncate (avg (totalvenda),2) média from venda;

select sum(totalvenda) from venda where totalvenda > 
(select truncate (avg (totalvenda),2) média from venda);


