INSERT INTO `ecommerce`.`Pedido` (`idPessoa`, `dataPedido`) VALUES ('306.225.145-04', '2022-10-12');
INSERT INTO `ecommerce`.`Pedido_has_Produto` (`idPedido`, `idProduto`, `quantidade`) VALUES ('1', '0618226050', '2');
INSERT INTO `ecommerce`.`Pedido_has_Produto` (`idPedido`, `idProduto`, `quantidade`) VALUES ('1', '235180800', '1');

INSERT INTO `ecommerce`.`Pedido` (`idPessoa`,  `dataPedido`) VALUES ('400.322.210-53', '2022-10-11');
INSERT INTO `ecommerce`.`Pedido_has_Produto` (`idPedido`, `idProduto`, `quantidade`) VALUES ('2', '235180800', '1');

INSERT INTO `ecommerce`.`Pedido` (`idPessoa`,`idPessoaVendedor`, `dataPedido`) VALUES ('788.478.701-60', '78.290.004/0001-49', '2022-10-11');
INSERT INTO `ecommerce`.`Pedido_has_Produto` (`idPedido`, `idProduto`, `quantidade`) VALUES ('3', '235180800', '1');

INSERT INTO `ecommerce`.`Pedido` (`idPessoa`,`idPessoaVendedor`, `dataPedido`, `statusPedido`) VALUES ('788.478.701-60', '78.290.004/0001-49', '2022-10-11', 'Cancelado');
INSERT INTO `ecommerce`.`Pedido_has_Produto` (`idPedido`, `idProduto`, `quantidade`) VALUES ('4', '235180800', '1');
