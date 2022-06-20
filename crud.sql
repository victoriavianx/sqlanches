-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)
INSERT INTO
	clientes(nome, lealdade)
VALUES
	('Georgia', 0);


-- 2)
INSERT INTO
	pedidos(status, cliente_id)
VALUES
	('Recebido', 6);


-- 3)
INSERT INTO
	produtos_pedidos(pedido_id, produto_id)
VALUES
	(6, 1),
    (6, 2),
    (6, 6),
    (6, 8),
    (6, 8);


-- Leitura

-- 1)
SELECT
	clientes.id,
    clientes.nome,
    clientes.lealdade,
	pedidos.id,
    pedidos.status,
    pedidos.cliente_id,
    produtos.id,
    produtos.nome,
    produtos.tipo,
    produtos.preco,
    produtos.pts_de_lealdade
FROM
	clientes
    INNER JOIN produtos_pedidos ON clientes.id = produtos_pedidos.pedido_id
    INNER JOIN pedidos ON clientes.id = pedidos.cliente_id
    INNER JOIN produtos ON produtos.id = produtos_pedidos.produto_id
WHERE
	clientes.id = 6;


-- Atualização

-- 1)
UPDATE
	clientes
SET
	lealdade = 48
WHERE
	clientes.id = 6;


-- Deleção

-- 1)
DELETE FROM
	clientes
WHERE
	nome = 'Marcelo';

