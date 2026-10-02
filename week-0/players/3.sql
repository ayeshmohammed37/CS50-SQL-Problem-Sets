--write a SQL query to find the ids of rows for which a value in the column debut is missing.
SELECT ROW_NUMBER() OVER() as row_num, "id" FROM "players" WHERE "debut" IS NULL;