USE ecommerce;

SELECT * FROM Pedido;

SELECT 
    nome AS Produto, quantidade AS Quantidade, statusPedido AS 'Status do Pedido'
FROM
    Pedido
        NATURAL JOIN
    Pedido_has_Produto
        NATURAL JOIN
    Produto;
    
SELECT CONCAT(nome, ' ', sobrenome) as Nome, email AS Email FROM Cliente NATURAL JOIN Pedido NATURAL JOIN Contato
WHERE 
statusPedido = 'Cancelado';