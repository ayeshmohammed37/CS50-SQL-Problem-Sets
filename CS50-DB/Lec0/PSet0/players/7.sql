-- write a SQL query to count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa.
SELECT COUNT(*) AS "Players Who alternately throw and bat" FROM "players"
WHERE ("bats" = 'R' AND "throws" = 'L') OR ("bats" = 'L' AND "throws" = 'R');