-- counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.
SELECT COUNT(*) FROM "episodes" 
	AS "number of episodes"
	WHERE "air_date" BETWEEN '2018-1-1' AND '2023-12-31';