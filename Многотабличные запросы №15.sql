SELECT hb.name, tt.countofhob
FROM hobby hb
INNER JOIN
(SELECT count(sh.student_id) as countofhob, sh.hobby_id
FROM student_hobby sh
WHERE sh.data_end IS NULL
GROUP BY sh.hobby_id) tt
ON tt.hobby_id = hb.id
