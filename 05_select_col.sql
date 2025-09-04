SELECT 
    IdCliente,
    --QtdePontos,
    --QtdePontos + 10 AS PontosMaisDez, 
    --QtdePontos * 2 AS PontosVezesDois,
    DtCriacao,
    datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,
    strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana

FROM clientes;