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
