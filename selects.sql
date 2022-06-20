-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)
SELECT
	pedidos.id,
    pedidos.status,
    pedidos.cliente_id,
    produtos.id,
    produtos.nome,
    produtos.tipo,
    produtos.preco,
    produtos.pts_de_lealdade,
    produtos_pedidos.pedido_id,
    produtos_pedidos.produto_id
FROM
	pedidos
	INNER JOIN produtos_pedidos ON pedidos.id = produtos_pedidos.pedido_id
    INNER JOIN produtos ON produtos.id = produtos_pedidos.produto_id;

-- 2)
SELECT
	pedidos.id
FROM
	pedidos
    INNER JOIN produtos_pedidos ON pedidos.id = produtos_pedidos.pedido_id
WHERE
	produtos_pedidos.produto_id = 6;

-- 3)
SELECT
	clientes.nome gostam_de_fritas
FROM
	clientes
    INNER JOIN produtos_pedidos ON clientes.id = produtos_pedidos.pedido_id
WHERE
	produtos_pedidos.produto_id = 6;

-- 4)
SELECT
	SUM(produtos.preco)
FROM
	produtos
    INNER JOIN produtos_pedidos ON produtos.id = produtos_pedidos.produto_id
    INNER JOIN pedidos ON pedidos.cliente_id = 5
WHERE
	produtos_pedidos.pedido_id = pedidos.cliente_id;

-- 5)
SELECT
	nome, COUNT(*)
FROM
	produtos
    INNER JOIN produtos_pedidos ON produtos.id = produtos_pedidos.produto_id
GROUP BY
	produtos.nome
ORDER BY
	nome;