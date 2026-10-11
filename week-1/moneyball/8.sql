SELECT "salary"
FROM "salaries"
WHERE "year" = 2001
AND "player_id" = (
	SELECT "player_id"
	FROM "performances"
	WHERE "year" = 2001
	AND "HR" = (
		SELECT MAX("HR") 
		FROM "performances"
	)
);

SELECT "salaries"."salary"
FROM "salaries" 
JOIN "performances"
ON "salaries"."player_id" = "performances"."player_id"
WHERE "salaries"."year" = 2001
AND "performances"."year" = 2001
AND "performances"."HR" = (
	SELECT MAX("HR")
	FROM "performances"
);
