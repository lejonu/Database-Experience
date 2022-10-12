USE ecommerce;

-- Seleciona todas as Pessoas ordenadas pelo tipo(CNPJ ou CPF)
SELECT 
    *
FROM
    Pessoa
ORDER BY tipoPessoa;

-- Seleciona todos os Fornecedores ordenados pelo id(CNPJ).
SELECT * FROM Pessoa NATURAL JOIN Fornecedor ORDER BY idPessoa;

-- Seleciona todos os emails dos Fornecedores ordenados pelo nomeFantasia
SELECT nomeFantasia AS Nome, email AS Email FROM Pessoa NATURAL JOIN CNPJ NATURAL JOIN Fornecedor  NATURAL JOIN Contato ORDER BY nomeFantasia;

-- Seleciona nome, endereço e telefone fixo dos Fornecedores.
SELECT 
    nomeFantasia as Nome,
    CONCAT(tipoLogradouro,
            ' ',
            nomeLogradouro,
            ', ',
            numero) AS Endereço,
	celular as Celular,
    telefone as Telefone
FROM
    Pessoa
        NATURAL JOIN
    CNPJ
        NATURAL JOIN
    Fornecedor
        NATURAL JOIN
    Endereco
        NATURAL JOIN
    Contato
ORDER BY nomeFantasia
;

-- Seleciona somente os Fornecedores com mais de um endereço. 
SELECT 
    idPessoa, nomeFantasia, telefone
FROM
    Pessoa
        NATURAL JOIN
    CNPJ
        NATURAL JOIN
    Fornecedor
        NATURAL JOIN
    Contato
WHERE
    idPessoa IN (SELECT 
            idPessoa
        FROM
            Pessoa
                NATURAL JOIN
            Fornecedor
                NATURAL JOIN
            Contato
        GROUP BY idPessoa
        HAVING COUNT(*) > 1);


-- Seleciona nome e endereço dos clientes de 'PE' 
SELECT 
    CONCAT(nome, ' ', sobrenome) AS Nome,
    CONCAT(tipoLogradouro,
            ' ',
            nomeLogradouro,
            ', ',
            numero,
            complemento,
            ' - Bairro ',
            bairro) AS Endereço,
    cidade AS Cidade,
    estado AS Estado
FROM
    Pessoa
        NATURAL JOIN
    Cliente
        NATURAL JOIN
    Endereco
WHERE
    estado = 'PE'
;
