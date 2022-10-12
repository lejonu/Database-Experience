INSERT INTO `ecommerce`.`Produto` (`idProduto`, `nome`, `descricao`, `valor`) VALUES ('234437400', 'Smartphone Samsung Galaxy S22', 'Tenha todos os seus compromissos e aplicativos úteis na palma da sua mão, sem deixar nada para trás com o S22 Galaxy da Samsung.', '4499');
INSERT INTO `ecommerce`.`Produto` (`idProduto`, `nome`, `descricao`, `valor`) VALUES ('235180800', 'Smartphone Motorola Edge 30', 'Poder e qualidade estão mais próximos com o smartphone Edge 30 da Motorola. A linha Edge traz um aparelho com uma incrível memória de 256GB para você guardar documentos.', '2491.47');
INSERT INTO `ecommerce`.`Produto` (`idProduto`, `nome`, `descricao`, `valor`) VALUES ('0618226050', 'Luxury Watch Men Sports Waterproof Chronograph Dateh', 'Band Length:24cm Style: Fashion & Casual Movement: Quartz Certification: CE Water Resistance Depth:3Bar Clasp Type: Buckle Origin: CN(Origin) Case Material: Alloy Case Thickness:8mm Dial Window Material Type: Hardlex', '120.47');

INSERT INTO `ecommerce`.`Estoque` (`idPessoa`, `idContato`) VALUES ('11.610.490/0001-64', '1');
INSERT INTO `ecommerce`.`Estoque_has_Produto` (`idProduto`, `idPessoa`, `idContato`, `quantidade`) VALUES ('0618226050', '11.610.490/0001-64', '1', '10');
INSERT INTO `ecommerce`.`Estoque_has_Produto` (`idProduto`, `idPessoa`, `idContato`, `quantidade`) VALUES ('234437400', '11.610.490/0001-64', '1', '25');
INSERT INTO `ecommerce`.`Estoque_has_Produto` (`idProduto`, `idPessoa`, `idContato`, `quantidade`) VALUES ('235180800', '11.610.490/0001-64', '1', '5');

INSERT INTO `ecommerce`.`Estoque` (`idPessoa`, `idContato`) VALUES ('11.610.490/0001-64', '2');
INSERT INTO `ecommerce`.`Estoque_has_Produto` (`idProduto`, `idPessoa`, `idContato`, `quantidade`) VALUES ('235180800', '11.610.490/0001-64', '2', '3');

INSERT INTO `ecommerce`.`Estoque` (`idPessoa`, `idContato`) VALUES ('35.080.750/0001-03', '3');
INSERT INTO `ecommerce`.`Estoque_has_Produto` (`idProduto`, `idPessoa`, `idContato`, `quantidade`) VALUES ('0618226050', '35.080.750/0001-03', '3', '3');
INSERT INTO `ecommerce`.`Estoque_has_Produto` (`idProduto`, `idPessoa`, `idContato`, `quantidade`) VALUES ('235180800', '35.080.750/0001-03', '3', '3');
INSERT INTO `ecommerce`.`Estoque_has_Produto` (`idProduto`, `idPessoa`, `idContato`, `quantidade`) VALUES ('234437400', '35.080.750/0001-03', '3', '0');
