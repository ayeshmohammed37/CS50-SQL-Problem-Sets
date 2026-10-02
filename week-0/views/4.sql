--In 4.sql, write a SQL query to count how many prints by Hiroshige have English titles that refer to the “Eastern Capital”. 
SELECT COUNT("artist")
FROM "views"
WHERE "artist" IS 'Hiroshige'
AND "english_title" LIKE '%Eastern Capital%';