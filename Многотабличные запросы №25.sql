CREATE OR REPLACE VIEW MostPopHob AS
SELECT hb.name
FROM hobby hb
INNER JOIN
(SELECT sh.hobby_id, countr(sh.student_id) as cc
FROM student_hobby sh
GROUP BY sh.hobby_id
ORDER BY cc DESC
LIMIT 1) tt
ON tt.hobby_id = hb.id
