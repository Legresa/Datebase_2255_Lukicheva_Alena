SELECT hb.name
FROM hobby hb
INNER JOIN
(SELECT count(sh.student_id) as countofhob, sh.hobby_id
FROM student_hobby sh
GROUP BY sh.hobby_id) tt
ON tt.hobby_id = hb.id
ORDER BY tt.countofhob DESC
LIMIT 1
