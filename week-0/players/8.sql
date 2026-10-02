SELECT ROUND(AVG("height"), 2) AS "AVG Height", 
ROUND(AVG("weight"), 2) AS "AVG Weight"
FROM "players"
WHERE "debut" >= '2000-01-01';