SELECT "districts"."name"
FROM "expenditures"
JOIN "districts"
ON "expenditures"."district_id" = "districts"."id"
ORDER BY "expenditures"."pupils"
LIMIT 1;