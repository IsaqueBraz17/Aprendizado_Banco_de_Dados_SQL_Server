-- Subqueries / SubConsultas

use EMPRESA_DB
Go

-- TRAGA A DESCRIÇÃO DOS PRODUTOS QUE POSSUEM O PREÇO MAIOR QUE A MÉDIA DE TODOS OS PRODUTOS
select P.Descricao from TB_PRODUTO P
where P.Preco > ( SELECT AVG( P2.Preco ) FROM TB_PRODUTO P2 )

-- TRAGA TODOS OS CLIENTES QUE EXISTA PEDIDOS NO MÊS 7 DE 1996
select C. * from TB_CLIENTE C
where exists ( SELECT * FROM TB_PEDIDO P WHERE C.ClienteId = P.ClienteId 
					AND P.DataPedido BETWEEN '1996-07-01' AND '1996-07-31')

-- TRAGA O NOME E O TOTAL DE PEDIDOS DE CADA CLIENTE
select C.NomeCompleto,
		( SELECT COUNT(*) FROM TB_PEDIDO P WHERE P.ClienteId = C.ClienteId) [ Total Pedidos ]
from TB_CLIENTE C
order by [ Total Pedidos ]


-- Subqueries Correlacionada / Exists

select CLI. * from TB_CLIENTE CLI 
where not exists (SELECT * FROM TB_PEDIDO P 
WHERE P.ClienteId = CLI.ClienteId AND DataPedido BETWEEN '2020-07-01' AND '2020-07-31')

-- Updates e Delete em Subqueries
Update TB_PRODUTO
SET Preco -= 1
where CategoriaId = ( SELECT CategoriaId FROM TB_CATEGORIA
							WHERE Descricao = 'Bebidas')

Delete from TB_PEDIDO
where FuncionarioId = ( SELECT FuncionarioId FROM TB_FUNCIONARIO
							WHERE Cargo = 'Vice-Presidente de Vendas')