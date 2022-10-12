-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS ecommerce ;

-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS ecommerce ;
USE ecommerce ;

-- -----------------------------------------------------
-- Table Pessoa
-- -----------------------------------------------------
DROP TABLE IF EXISTS Pessoa ;

CREATE TABLE IF NOT EXISTS Pessoa (
  idPessoa VARCHAR(18) NOT NULL,
  tipoPessoa ENUM('CNPJ', 'CPF'),
   PRIMARY KEY (idPessoa)
);


-- -----------------------------------------------------
-- Table Contato
-- -----------------------------------------------------
DROP TABLE IF EXISTS Contato ;

CREATE TABLE IF NOT EXISTS Contato (
  idContato INT NOT NULL AUTO_INCREMENT,
  idPessoa VARCHAR(18) NOT NULL,
  site VARCHAR(45) NULL,
  email VARCHAR(70) NULL,
  celular VARCHAR(45) NULL,
  telefone VARCHAR(45) NULL,
  PRIMARY KEY (idContato, idPessoa),
  CONSTRAINT fk_Contato_Pessoa
    FOREIGN KEY (idPessoa)
    REFERENCES Pessoa (idPessoa)
);

-- -----------------------------------------------------
-- Table Endereco
-- -----------------------------------------------------
DROP TABLE IF EXISTS Endereco ;

CREATE TABLE IF NOT EXISTS Endereco (
    idPessoa VARCHAR(18) NOT NULL,
    idContato INT NOT NULL,
    tipoLogradouro VARCHAR(45) NULL,
    nomeLogradouro VARCHAR(45) NULL,
    numero VARCHAR(10) NULL,
    complemento VARCHAR(45) NULL,
    bairro VARCHAR(45) NULL,
    cep VARCHAR(45) NULL,
    cidade VARCHAR(45) NULL,
    estado CHAR(2) NULL,
    PRIMARY KEY (idPessoa , idContato),
    CONSTRAINT fk_Endereco_Contato FOREIGN KEY (idContato , idPessoa)
        REFERENCES Contato (idContato , idPessoa)
);

-- -----------------------------------------------------
-- Table Cliente
-- -----------------------------------------------------
DROP TABLE IF EXISTS Cliente ;

CREATE TABLE IF NOT EXISTS Cliente (
  idPessoa VARCHAR(18) NOT NULL,
  nome VARCHAR(45) NULL,
  sobrenome VARCHAR(45) NULL,
  PRIMARY KEY (idPessoa),
  CONSTRAINT fk_Cliente_Pessoa
    FOREIGN KEY (idPessoa)
    REFERENCES Pessoa (idPessoa)
);


-- -----------------------------------------------------
-- Table CNPJ
-- -----------------------------------------------------
DROP TABLE IF EXISTS CNPJ ;

CREATE TABLE IF NOT EXISTS CNPJ (
  idPessoa VARCHAR(18) NOT NULL,
  nomeFantasia VARCHAR(45) NOT NULL,
  inscricaoEstadual VARCHAR(45) NULL,
  PRIMARY KEY (idPessoa),
  CONSTRAINT fk_CNPJ_Pessoa
    FOREIGN KEY (idPessoa)
    REFERENCES Pessoa (idPessoa)
);

-- -----------------------------------------------------
-- Table Fornecedor
-- -----------------------------------------------------
DROP TABLE IF EXISTS Fornecedor ;

CREATE TABLE IF NOT EXISTS Fornecedor (
  idPessoa VARCHAR(18) NOT NULL,
  PRIMARY KEY (idPessoa),
  CONSTRAINT fk_Fornecedor_CNPJ
    FOREIGN KEY (idPessoa)
    REFERENCES CNPJ (idPessoa)
);

-- -----------------------------------------------------
-- Table Vendedor
-- -----------------------------------------------------
DROP TABLE IF EXISTS Vendedor ;

CREATE TABLE IF NOT EXISTS Vendedor (
  idPessoa VARCHAR(18) NOT NULL,
  PRIMARY KEY (idPessoa),
  CONSTRAINT fk_Vendedor_CNPJ
    FOREIGN KEY (idPessoa)
    REFERENCES CNPJ (idPessoa)
);

