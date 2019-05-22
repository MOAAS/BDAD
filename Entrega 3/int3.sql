-- Devolve o número de vezes que as pistas foram usadas no mês de maio de 2019

.mode columns
.headers on
.nullvalue NULL

SELECT RunwayID, count(*) AS TimesUsed FROM Trip GROUP BY RunwayID;