
-- *** The Lost Letter ***
SELECT * FROM "addresses"
WHERE "address" LIKE '900 Somerville Avenue';

SELECT * FROM "packages"
WHERE "from_address_id" = (
	SELECT "id" FROM "addresses"
	WHERE "address" LIKE '900 Somerville Avenue'
);

SELECT "type", "address"
FROM "addresses"
WHERE "id" = (
	SELECT "to_address_id"
	FROM "packages"
	WHERE "from_address_id" = (
		SELECT "id"
		FROM "addresses"
		WHERE "address" LIKE '900 Somerville Avenue'
	)
);


-- *** The Devious Delivery ***
SELECT "packages"."contents", "addresses"."type"
FROM "packages"
JOIN "scans"
ON "packages"."id" = "scans"."package_id"
Join "addresses"
ON "scans"."address_id" = "addresses"."id"
WHERE "scans"."action" = 'Drop'
AND "packages"."from_address_id" IS NULL;

-- *** The Forgotten Gift ***


-- Get the package contents
SELECT "contents" FROM "packages"
WHERE "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = "728 Maple Place")
AND "from_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = "109 Tileston Street");

-- Get the drivers that delivered those packages
SELECT "name", "action" FROM "drivers" JOIN "scans" ON "drivers"."id" = "scans"."driver_id"
WHERE "package_id" IN (
    SELECT "id" FROM "packages"
    WHERE "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = "728 Maple Place")
    AND "from_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = "109 Tileston Street")
);























