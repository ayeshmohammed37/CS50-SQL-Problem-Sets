SELECT "city", COUNT("id") AS "schools_number"
FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING "schools_number" < 4
ORDER BY "schools_number"DESC, "city";