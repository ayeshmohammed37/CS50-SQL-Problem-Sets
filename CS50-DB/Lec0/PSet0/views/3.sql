SELECT COUNT(*) FROM "views" 
	AS "prints by Hokusai include “Fuji” in the English title" 
	WHERE "artist" = 'Hokusai' 
	AND "english_title" LIKE '%Fuji%';