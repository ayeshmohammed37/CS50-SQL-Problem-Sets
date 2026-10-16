.import --csv meteorites.csv temp_meteorites

CREATE TABLE "meteorites" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT CHECK("discovery" IN ('Found', 'Fell')),
    "year" INTEGER,
    "lat" NUMERIC,
    "long" NUMERIC
);

UPDATE "temp_meteorites" SET "mass" = NULL WHERE "mass" = '';
UPDATE "temp_meteorites" SET "year" = NULL WHERE "year" = '';
UPDATE "temp_meteorites" SET "lat" = NULL WHERE "lat" = '';
UPDATE "temp_meteorites" SET "long" = NULL WHERE "long" = '';

UPDATE "temp_meteorites" SET "mass" = ROUND("mass", 2) WHERE "mass" NOT NULL;
UPDATE "temp_meteorites" SET "lat" = ROUND("lat", 2) WHERE "mass" NOT NULL;
UPDATE "temp_meteorites" SET "long" = ROUND("long", 2) WHERE "mass" NOT NULL;

DELETE FROM "temp_meteorites" 
WHERE "nametype" = 'Relict';


INSERT INTO "meteorites" (
    "name", 
    "class", 
    "mass", 
    "discovery", 
    "year", 
    "lat", 
    "long"
)
SELECT 
    "name", 
    "class", 
    "mass", 
    "discovery", 
    "year", 
    "lat", 
    "long"
FROM "temp_meteorites"
ORDER BY "year" ASC, "name" ASC;

DROP TABLE "temp_meteorites";