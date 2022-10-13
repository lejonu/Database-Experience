SELECT * FROM ecommerce.Pedido;
DESC ecommerce.Pedido;

-- Seleciona um pedido específico
SELECT * FROM Pedido 
WHERE idPedido = '1' AND idPessoa = '306.225.145-04'
;

-- Seleciona os produtos de um pedido específico
SELECT Produto.idProduto FROM Pedido NATURAL JOIN Produto
WHERE idPedido = '1' AND idPessoa = '306.225.145-04'
;

-- Seleciona os estoques com o produto disponível
SELECT idContato, idPessoa FROM Estoque NATURAL JOIN Estoque_has_Produto
WHERE Estoque_has_Produto.idProduto IN (SELECT Produto.idProduto FROM Pedido NATURAL JOIN Produto
WHERE idPedido = '1' AND idPessoa = '306.225.145-04')
AND Estoque_has_Produto.quantidade > 0
;

-- Seleciona endereços dos Fornecedores dos produtos de um pedido
SELECT DISTINCT
    *
FROM
    Endereco
        NATURAL JOIN
    (SELECT 
        idContato, idPessoa
    FROM
        Estoque
    NATURAL JOIN Estoque_has_Produto
    WHERE
        Estoque_has_Produto.idProduto IN (SELECT 
                Produto.idProduto
            FROM
                Pedido
            NATURAL JOIN Produto
            WHERE
                idPedido = '1'
                    AND idPessoa = '306.225.145-04')
            AND Estoque_has_Produto.quantidade > 0) AS Estoques
;