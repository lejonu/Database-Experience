-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ecommerce` ;

-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ecommerce` ;
USE `ecommerce` ;

-- -----------------------------------------------------
-- Table `ecommerce`.`Pessoa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Pessoa` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Pessoa` (
  `idPessoa` VARCHAR(18) NOT NULL,
  `tipoPessoa` ENUM('CNPJ', 'CPF') NULL DEFAULT NULL,
  PRIMARY KEY (`idPessoa`)
);


-- -----------------------------------------------------
-- Table `ecommerce`.`Contato`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Contato` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Contato` (
  `idContato` INT NOT NULL AUTO_INCREMENT,
  `idPessoa` VARCHAR(18) NOT NULL,
  `site` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(70) NULL DEFAULT NULL,
  `celular` VARCHAR(45) NULL DEFAULT NULL,
  `telefone` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idContato`, `idPessoa`),
  CONSTRAINT `fk_Contato_Pessoa`
    FOREIGN KEY (`idPessoa`)
    REFERENCES `ecommerce`.`Pessoa` (`idPessoa`)
);

-- -----------------------------------------------------
-- Table `ecommerce`.`Endereco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Endereco` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Endereco` (
  `idPessoa` VARCHAR(18) NOT NULL,
  `idContato` INT NOT NULL,
  `tipoLogradouro` VARCHAR(45) NULL DEFAULT NULL,
  `nomeLogradouro` VARCHAR(45) NULL DEFAULT NULL,
  `numero` VARCHAR(10) NULL DEFAULT NULL,
  `complemento` VARCHAR(45) NULL DEFAULT NULL,
  `bairro` VARCHAR(45) NULL DEFAULT NULL,
  `cep` VARCHAR(45) NULL DEFAULT NULL,
  `cidade` VARCHAR(45) NULL DEFAULT NULL,
  `estado` CHAR(2) NULL DEFAULT NULL,
  PRIMARY KEY (`idPessoa`, `idContato`),
  CONSTRAINT `fk_Endereco_Contato`
    FOREIGN KEY (`idContato` , `idPessoa`)
    REFERENCES `ecommerce`.`Contato` (`idContato` , `idPessoa`));

-- -----------------------------------------------------
-- Table `ecommerce`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Cliente` (
  `idPessoa` VARCHAR(18) NOT NULL,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `sobrenome` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idPessoa`),
  CONSTRAINT `fk_Cliente_Pessoa`
    FOREIGN KEY (`idPessoa`)
    REFERENCES `ecommerce`.`Pessoa` (`idPessoa`)
);

-- -----------------------------------------------------
-- Table `ecommerce`.`CNPJ`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`CNPJ` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`CNPJ` (
  `idPessoa` VARCHAR(18) NOT NULL,
  `nomeFantasia` VARCHAR(45) NOT NULL,
  `inscricaoEstadual` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idPessoa`),
  CONSTRAINT `fk_CNPJ_Pessoa`
    FOREIGN KEY (`idPessoa`)
    REFERENCES `ecommerce`.`Pessoa` (`idPessoa`)
);

-- -----------------------------------------------------
-- Table `ecommerce`.`Fornecedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Fornecedor` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Fornecedor` (
  `idPessoa` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`idPessoa`),
  CONSTRAINT `fk_Fornecedor_CNPJ`
    FOREIGN KEY (`idPessoa`)
    REFERENCES `ecommerce`.`CNPJ` (`idPessoa`)
);

-- -----------------------------------------------------
-- Table `ecommerce`.`Vendedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Vendedor` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Vendedor` (
  `idPessoa` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`idPessoa`),
  CONSTRAINT `fk_Vendedor_CNPJ`
    FOREIGN KEY (`idPessoa`)
    REFERENCES `ecommerce`.`CNPJ` (`idPessoa`));

-- -----------------------------------------------------
-- Table `ecommerce`.`Produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Produto` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Produto` (
  `idProduto` VARCHAR(20) NOT NULL,
  `nome` VARCHAR(100) NULL,
  `descricao` TINYTEXT NULL,
  `valor` FLOAT NULL,
  PRIMARY KEY (`idProduto`)
);


-- -----------------------------------------------------
-- Table `ecommerce`.`Estoque`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Estoque` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Estoque` (
  `idPessoa` VARCHAR(18) NOT NULL,
  `idContato` INT NOT NULL,
  PRIMARY KEY (`idPessoa`, `idContato`),
  CONSTRAINT `fk_Estoque_Fornecedor`
    FOREIGN KEY (`idPessoa`)
    REFERENCES `ecommerce`.`Fornecedor` (`idPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estoque_Endereco1`
    FOREIGN KEY (`idContato`)
    REFERENCES `ecommerce`.`Endereco` (`idContato`)
);

-- -----------------------------------------------------
-- Table `ecommerce`.`Estoque_has_Produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Estoque_has_Produto` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Estoque_has_Produto` (
  `idProduto` VARCHAR(20) NOT NULL,
  `idPessoa` VARCHAR(18) NOT NULL,
  `idContato` INT NOT NULL,
  `quantidade` VARCHAR(45) NULL,
  PRIMARY KEY (`idProduto`, `idPessoa`, `idContato`),
  CONSTRAINT `fk_Estoque_has_Produto_Produto`
    FOREIGN KEY (`idProduto`)
    REFERENCES `ecommerce`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estoque_has_Produto_Estoque1`
    FOREIGN KEY (`idPessoa` , `idContato`)
    REFERENCES `ecommerce`.`Estoque` (`idPessoa` , `idContato`)
);

-- -----------------------------------------------------
-- Table `ecommerce`.`Pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Pedido` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Pedido` (
  `idPedido` INT NOT NULL AUTO_INCREMENT,
  `idPessoa` VARCHAR(18) NOT NULL,
  `idPessoaVendedor` VARCHAR(18) NULL,
  `dataPedido` DATE NULL,
  `statusPedido` ENUM('Em Processamento', 'Cancelado', 'Aprovado') NULL DEFAULT 'Em Processamento',
  `formaPagamento` ENUM('Boleto', 'Cartão', 'Dois Cartões') NULL DEFAULT 'Boleto',
  PRIMARY KEY (`idPedido`, `idPessoa`),
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`idPessoa`)
    REFERENCES `ecommerce`.`Cliente` (`idPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Vendedor1`
    FOREIGN KEY (`idPessoaVendedor`)
    REFERENCES `ecommerce`.`Vendedor` (`idPessoa`)
);

CREATE INDEX `fk_Pedido_Vendedor1_idx` ON `ecommerce`.`Pedido` (`idPessoaVendedor` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `ecommerce`.`Pedido_has_Produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecommerce`.`Pedido_has_Produto` ;

CREATE TABLE IF NOT EXISTS `ecommerce`.`Pedido_has_Produto` (
    `idPedido` INT NOT NULL,
    `idProduto` VARCHAR(20) NOT NULL,
    `quantidade` INT NULL,
    PRIMARY KEY (`idPedido` , `idProduto`),
    CONSTRAINT `fk_Pedido_has_Produto_Pedido1` FOREIGN KEY (`idPedido`)
        REFERENCES `ecommerce`.`Pedido` (`idPedido`)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_Pedido_has_Produto_Produto1` FOREIGN KEY (`idProduto`)
        REFERENCES `ecommerce`.`Produto` (`idProduto`)
);


