SELECT "districts"."name", COUNT("schools"."id") AS "number of schools in district"
FROM "districts"
LEFT JOIN "schools" 
ON "districts"."id" = "schools"."district_id"
Group BY "districts"."name";