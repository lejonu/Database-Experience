# Database Experience

##### Curso de Banco de Dados oferecido pela [DIO](https://www.dio.me), ministrado por [Juliana Mascarenhas](https://www.linkedin.com/in/juliana-mascarenhas-ds/).

------

### Projeto E-Commerce

Especificações:

- Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações.

- O Cliente terá um ou mais endereços.

- O pedido pode ser realizado por um vendedor terceirizado

- Pagamento – Pode ter cadastrado mais de uma forma de pagamento;

- Entrega – Possui status e código de rastreio;

  

Modelo Entidade Relacionamento:

![alt](./img/E-Commerce.drawio.png)



Desenvolvimento

A tabela Pessoa terá como chave primária  o CNPJ ou CPF.

![alt](./img/Pessoa-EER.png)



[SQL - Pessoa](./SQL/Schema-Pessoa.sql)

[Mock SQL - Pessoa](./SQL/mock-pessoa.sql)

[Relatório SQL - Pessoa](./SQL/select-pessoa.sql) 

Um Produto pode estar em vários estoques e um estoque pode ter vários produtos idênticos.

![alt](./img/Produto-EER.png)



[SQL - Produto](./SQL/Schema-Produto.sql)

[Mock SQL - Produto](./SQL/mock-produto.sql)

[Relatório SQL - Produto](./SQL/select-produto.sql) 



![alt](./img/Pedido-EER.png)



[SQL - Pedido](./SQL/Schema-Pedido.sql)

[Mock SQL - Pedido](./SQL/mock-pedido.sql)

[Relatório SQL - Pedido](./SQL/select-pedido.sql)



Entrega

![alt](./img/Entrega-EER.png)



[SQL - Entrega](./SQL/Schema-Entrega.sql)

[Mock SQL - Entrega](./SQL/mock-entrega.sql)

[Relatório SQL - Entrega](./SQL/select-entrega.sql)



###### License: MIT
