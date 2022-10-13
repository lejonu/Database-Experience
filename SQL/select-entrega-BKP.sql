USE ecommerce;
SELECT * FROM ecommerce.Entrega;

-- Seleciona pedidos

SELECT 
    *
FROM
    Entrega
        NATURAL JOIN
    Pedido
        NATURAL JOIN
    Pedido_has_Produto
        NATURAL JOIN
    Produto;





SELECT 
    Cliente.nome,
    CONCAT(tipoLogradouro,
            ' ',
            nomeLogradouro,
            ', ',
            numero) AS 'Endereço de entrega'
FROM
    Cliente
        NATURAL JOIN
    Endereco
        NATURAL JOIN
    Pedido
        NATURAL JOIN
    Pedido_has_Produto

        INNER JOIN
    Produto on Produto.idProduto = Pedido_has_Produto.idProduto;

