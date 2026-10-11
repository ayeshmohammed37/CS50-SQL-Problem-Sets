SELECT "players"."first_name", "players"."last_name", SUM("salaries"."salary") / "performances"."H" AS "dollars per hit"
FROM "players" 
JOIN "performances" 
ON "players"."id" = "performances"."player_id"
JOIN "salaries" 
ON "salaries"."player_id" = "players"."id"
WHERE "performances"."year" = 2001 
AND "salaries"."year" = 2001
AND "performances"."H" != 0
GROUP BY "players"."id"
ORDER BY "dollars per hit", "players"."first_name", "players"."last_name"
LIMIT 10;