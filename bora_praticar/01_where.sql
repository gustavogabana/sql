-- selecione todos os clientes com email cadastrado
SELECT *
FROM clientes
WHERE FlEmail = 1;

-- selecione todas as transacoes de 50 pontos
SELECT *
FROM transacoes
WHERE QtdePontos = 50;

-- selecione todos os clientes com mais de 500 pontos
SELECT *
FROM clientes
WHERE QtdePontos >= 500;

-- selecione produtos que contem churn no nome
SELECT *
FROM produtos
WHERE DescProduto LIKE '%churn%' -- pior forma
OR DescCateogriaProduto = 'churn_model'; -- melhor forma

-- selecione todas as transacoes de 1 ponto
SELECT *
FROM transacoes
WHERE QtdePontos = 1;

-- selecione as transacoes realizadas no fim de semana
SELECT 
    IdTransacao,
    DtCriacao,
    strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana
FROM transacoes
WHERE diaSemana IN ('0', '6');

-- selecione lista de cliente com zero pontos
SELECT 
    IdCliente,
    QtdePontos
FROM clientes
WHERE QtdePontos = 0;

-- lista de clientes com 100 e 200 pontos (inclusive)
SELECT 
    IdCliente,
    QtdePontos
FROM clientes
WHERE QtdePontos >= 100 AND QtdePontos <= 200;

-- lista de produtos que o nome começa com "venda de"
SELECT *
FROM produtos
WHERE DescProduto LIKE 'venda de%';

-- lista de produtos que terminam com "lover"
SELECT *
FROM produtos
WHERE DescCateogriaProduto = 'lovers';

-- lista de produtos que são chapéu
SELECT *
FROM produtos
WHERE DescProduto LIKE '%chapéu%';

-- lista de transações com produto "pônei"
SELECT *
FROM produtos
WHERE DescCateogriaProduto = 'ponei';

SELECT *
FROM transacao_produto
WHERE IdProduto = 15;