-- list the average colors of prints by Hokusai that include “river” in the English title
SELECT "average_color" FROM "views" 
	WHERE "artist" LIKE 'Hokusai' 
	AND "english_title" LIKE "%river%";