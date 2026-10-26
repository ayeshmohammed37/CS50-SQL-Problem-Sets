CREATE TABLE "triplets" (
    "id" INTEGER PRIMARY KEY,
    "ch_number" INTEGER NOT NULL,
    "msg_length" INTEGER NOT NULL
);

INSERT INTO "triplets" ("id", "ch_number", "msg_length")
VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

CREATE VIEW "message" AS
SELECT substr("sentences"."sentence", "triplets"."ch_number", "triplets"."msg_length") AS "phrase"
FROM "sentences"
JOIN "triplets"
ON "sentences"."id" = "triplets"."id";