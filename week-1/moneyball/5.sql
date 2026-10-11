SELECT "name"
FROM "teams"
WHERE "id" IN (
	SELECT "team_id"
	FROM "performances"
	WHERE "player_id" = (
		SELECT "id"
		FROM "players"
		WHERE "first_name" = 'Satchel' 
		AND "last_name" = 'Paige'
	)
);

SELECT DISTINCT "teams"."name"
FROM "players"
JOIN "performances"
ON "players"."id" = "performances"."player_id"
JOIN "teams" 
ON "teams"."id" = "performances"."team_id"
WHERE "players"."first_name" = 'Satchel' 
AND "players"."last_name" = 'Paige';
