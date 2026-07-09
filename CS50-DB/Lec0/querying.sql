-- SELECT
SELECT * FROM "longlist";
-- LIMIT
SELECT "title" FROM "Longlist" LIMIT 10;
-- WHERE
SELECT "title", "author" FROM "longlist" WHERE "year" = 2023;

SELECT "title", "format" FROM "longlist" WHERE "format" <> 'hardcover';

SELECT "title", "format" FROM "longlist" WHERE NOT "format" = 'hardcover';

SELECT "title", "author", "year" FROM "longlist" WHERE "year" = 2022 OR "year" = 2023;

SELECT "title", "translator" FROM "longlist" WHERE "translator" IS NOT NULL;

SELECT "title" FROM "longlist" WHERE "title" LIKE '%love%';

SELECT "title" FROM "longlist" WHERE "title" Like 'The %';

SELECT "title" FROM "longlist" WHERE "title" LIKE 'P_re';

SELECT "title" FROM "longlist" WHERE "year" BETWEEN 2019 AND 2022;

SELECT "title", "rating", "votes" FROM "longlist" 
	WHERE "rating" > 4.0 AND "votes" > 10000;
	
SELECT "title" FROM "longlist" WHERE "title" = "pyre";

SELECT "title", "rating" FROM "longlist" 
	ORDER BY "rating" DESC LIMIT 10;

SELECT "title", "rating", "votes" FROM  "longlist"
	ORDER BY "rating" DESC, "votes" DESC 
	LIMIT 10;

SELECT AVG("rating") FROM "longlist";

SELECT ROUND(AVG("rating"), 2) FROM "longlist";

SELECT ROUND(AVG("rating"), 2) AS "avg rating"
	FROM "longlist";

SELECT COUNT(DISTINCT "publisher") FROM "longlist";

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	









