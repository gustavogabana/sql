-- clientes com mais pontos
SELECT *
FROM clientes
ORDER BY QtdePontos DESC
LIMIT 10;

-- clientes mais antigos e com mais pontos e só quem tem twitch
SELECT *
FROM clientes
WHERE FlTwitch = 1
ORDER BY DtCriacao ASC, QtdePontos DESC 
LIMIT 10;