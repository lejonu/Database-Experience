-- Pessoa CNPJ Fornecedor 
INSERT INTO `ecommerce`.`Pessoa` (`idPessoa`, `tipoPessoa`) VALUES ('11.610.490/0001-64', 'CNPJ');
INSERT INTO `ecommerce`.`CNPJ` (`idPessoa`, `nomeFantasia`, `inscricaoEstadual`) VALUES ('11.610.490/0001-64', 'Joana e Rosângela Financeira Ltda', '321.552.222/8227');
INSERT INTO `ecommerce`.`Fornecedor` (`idPessoa`) VALUES ('11.610.490/0001-64');
INSERT INTO `ecommerce`.`Contato` (`idPessoa`, `site`, `email`, `celular`, `telefone`) VALUES ('11.610.490/0001-64', 'www.joanaerosangelafinanceiraltda.com.br', 'marketing@joanaerosangelafinanceiraltda.com.br', '(31) 98929-6128', '(31) 2510-6202');
INSERT INTO `ecommerce`.`Contato` (`idPessoa`, `site`, `email`, `celular`, `telefone`) VALUES ('11.610.490/0001-64', 'www.joanaerosangelafinanceiraltda.com.br', 'marketing@joanaerosangelafinanceiraltda.com.br', '(31) 98929-6128', '(31) 3279-5822');

-- Pessoa CNPJ Fornecedor 
INSERT INTO `ecommerce`.`Endereco` (`idPessoa`, `idContato`, `tipoLogradouro`, `nomeLogradouro`, `numero`, `complemento`, `cep`, `bairro`, `estado`, `cidade`) VALUES ('11.610.490/0001-64', '1', 'Rua', 'Desembargador Aníbal Pacheco', '605', '', '30882-700', 'Serrano', 'MG', 'Belo Horizonte');
INSERT INTO `ecommerce`.`Endereco` (`idPessoa`, `idContato`, `tipoLogradouro`, `nomeLogradouro`, `numero`, `complemento`, `cep`, `bairro`, `estado`, `cidade`) VALUES ('11.610.490/0001-64', '2', 'Rua', 'Antônio Lopes Morgado', '910', '', '30040-789', 'Serra', 'MG', 'Belo Horizonte');

-- Pessoa CNPJ Fornecedor 
INSERT INTO `ecommerce`.`Pessoa` (`idPessoa`, `tipoPessoa`) VALUES ('35.080.750/0001-03', 'CNPJ');
INSERT INTO `ecommerce`.`CNPJ` (`idPessoa`, `nomeFantasia`, `inscricaoEstadual`) VALUES ('35.080.750/0001-03', 'Antonio e Fernanda Pizzaria Delivery ME', '043.109.468/6100');
INSERT INTO `ecommerce`.`Fornecedor` (`idPessoa`) VALUES ('35.080.750/0001-03');
INSERT INTO `ecommerce`.`Contato` (`idPessoa`, `site`, `email`, `celular`, `telefone`) VALUES ('35.080.750/0001-03', 'www.antonioefernandapizzariadeliveryme.com.br', 'treinamento@antonioefernandapizzariadeliveryme.com.br', '(32) 98420-6636', '(32) 3580-3051');
INSERT INTO `ecommerce`.`Endereco` (`idPessoa`, `idContato`, `tipoLogradouro`, `nomeLogradouro`, `numero`, `complemento`, `cep`, `bairro`, `estado`, `cidade`) VALUES ('35.080.750/0001-03', '3', 'Rua', 'Trajano Calderaro', '483', '', '36248-970', 'Centro', 'MG', 'Belo Horizonte');

-- Pessoa CNPJ Fornecedor 
INSERT INTO `ecommerce`.`Pessoa` (`idPessoa`, `tipoPessoa`) VALUES ('04.818.381/0001-71', 'CNPJ');
INSERT INTO `ecommerce`.`CNPJ` (`idPessoa`, `nomeFantasia`, `inscricaoEstadual`) VALUES ('04.818.381/0001-71', 'Benedita e Patrícia Buffet ME', '947.933.138/8320');
INSERT INTO `ecommerce`.`Fornecedor` (`idPessoa`) VALUES ('04.818.381/0001-71');
INSERT INTO `ecommerce`.`Contato` (`idPessoa`, `site`, `email`, `celular`, `telefone`) VALUES ('04.818.381/0001-71', 'www.beneditaepatriciabuffetme.com.br', 'financeiro@beneditaepatriciabuffetme.com.br', '(33) 98291-7980', '(33) 2966-4209');
INSERT INTO `ecommerce`.`Endereco` (`idPessoa`, `idContato`, `tipoLogradouro`, `nomeLogradouro`, `numero`, `complemento`, `cep`, `bairro`, `estado`, `cidade`) VALUES ('04.818.381/0001-71', '4', 'Rua', 'Sessenta e Nove', '259', '', '39803-162', 'Teófilo Rocha', 'MG', 'Teófilo Otoni');

-- Pessoa CNPJ Vendedor 
INSERT INTO `ecommerce`.`Pessoa` (`idPessoa`, `tipoPessoa`) VALUES ('78.290.004/0001-49', 'CNPJ');
INSERT INTO `ecommerce`.`CNPJ` (`idPessoa`, `nomeFantasia`, `inscricaoEstadual`) VALUES ('78.290.004/0001-49', 'Bárbara e Daiane Doces & Salgados Ltda', '395.999.099/1567');
INSERT INTO `ecommerce`.`Vendedor` (`idPessoa`) VALUES ('78.290.004/0001-49');
INSERT INTO `ecommerce`.`Contato` (`idPessoa`, `site`, `email`, `celular`, `telefone`) VALUES ('78.290.004/0001-49', 'www.barbaraedaianedocessalgadosltda.com.br', 'producao@barbaraedaianedocessalgadosltda.com.br', '(34) 98687-3256', '(34) 2828-9359');
INSERT INTO `ecommerce`.`Endereco` (`idPessoa`, `idContato`, `tipoLogradouro`, `nomeLogradouro`, `numero`, `complemento`, `cep`, `bairro`, `estado`, `cidade`) VALUES ('78.290.004/0001-49', '5', 'Alameda', 'Grande Loja do Oriente', '259', '', '39803-162', 'Teófilo Rocha', 'MG', 'Teófilo Otoni');

-- Pessoa Cliente CPF
INSERT INTO `ecommerce`.`Pessoa` (`idPessoa`, `tipoPessoa`) VALUES ('306.225.145-04', 'CPF');
INSERT INTO `ecommerce`.`Cliente` (`idPessoa`, `nome`, `sobrenome`) VALUES ('306.225.145-04', 'Márcia', 'Maitê Nogueira');
INSERT INTO `ecommerce`.`Contato` (`idPessoa`, `site`, `email`, `celular`, `telefone`) VALUES ('306.225.145-04', '', 'marcializnogueira@realweb.com.br', '(86) 98923-2629', '(86) 3882-3881');
INSERT INTO `ecommerce`.`Endereco` (`idPessoa`, `idContato`, `tipoLogradouro`, `nomeLogradouro`, `numero`, `complemento`, `cep`, `bairro`, `estado`, `cidade`) VALUES ('306.225.145-04', '6', 'Quadra', '85', '890', '', '64013-538', 'Santa Maria da Codipe', 'PI', 'Teresina');

-- Pessoa Cliente CPF
INSERT INTO `ecommerce`.`Pessoa` (`idPessoa`, `tipoPessoa`) VALUES ('400.322.210-53', 'CPF');
INSERT INTO `ecommerce`.`Cliente` (`idPessoa`, `nome`, `sobrenome`) VALUES ('400.322.210-53', 'Marcos', 'Severino da Mota');
INSERT INTO `ecommerce`.`Contato` (`idPessoa`, `site`, `email`, `celular`, `telefone`) VALUES ('400.322.210-53', '', 'marcos.severino.damota@imobideal.com', '(81) 98807-2016', '(81) 3955-9575');
INSERT INTO `ecommerce`.`Endereco` (`idPessoa`, `idContato`, `tipoLogradouro`, `nomeLogradouro`, `numero`, `complemento`, `cep`, `bairro`, `estado`, `cidade`) VALUES ('400.322.210-53', '7', 'Rua', 'Dardo', '292', '', '54130-040', 'Manassu', 'PE', 'Jaboatão dos Guararapes');

-- Pessoa Cliente CPF
INSERT INTO `ecommerce`.`Pessoa` (`idPessoa`, `tipoPessoa`) VALUES ('788.478.701-60', 'CPF');
INSERT INTO `ecommerce`.`Cliente` (`idPessoa`, `nome`, `sobrenome`) VALUES ('788.478.701-60', 'Helena', 'Renata Eloá Almeida');
INSERT INTO `ecommerce`.`Contato` (`idPessoa`, `site`, `email`, `celular`, `telefone`) VALUES ('788.478.701-60', '', 'helena.renata.almeida@jh2consulting.com', '(85) 98698-4969', '');
INSERT INTO `ecommerce`.`Endereco` (`idPessoa`, `idContato`, `tipoLogradouro`, `nomeLogradouro`, `numero`, `complemento`, `cep`, `bairro`, `estado`, `cidade`) VALUES ('788.478.701-60', '8', 'Rua', 'Ieldo Rolim', '793', '', '61943-440', 'Novo Maranguape I', 'CE', 'Maranguape');

