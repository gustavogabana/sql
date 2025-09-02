/* seleciona tudo */
-- SELECT * FROM clientes;

/* seleciona apenas algumas colunas */
SELECT IdCliente, QtdePontos, DtCriacao 
FROM clientes
LIMIT 10;