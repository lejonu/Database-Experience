USE ecommerce;

-- Seleciona o valor dos produtos de um Fornecedor
SELECT nomeFantasia AS Empresa, CONCAT('R$ ', SUM(ROUND(valor, 2))) AS Total FROM Produto NATURAL JOIN Estoque_has_Produto  NATURAL JOIN Fornecedor  NATURAL JOIN CNPJ WHERE CNPJ.idPessoa = '11.610.490/0001-64';

-- Seleciona produtos para reposição quando a quantidade for menor que 5
SELECT 
    idProduto,
    nome,
    valor,
    quantidade,
    nomeFantasia,
    CONCAT(tipoLogradouro,
            ' ',
            nomeLogradouro,
            ', ',
            numero) AS Endereço
FROM
    Produto
        NATURAL JOIN
    Estoque_has_Produto
        NATURAL JOIN
    CNPJ
        NATURAL JOIN
    Endereco
HAVING quantidade < 5
ORDER BY nomeFantasia;
