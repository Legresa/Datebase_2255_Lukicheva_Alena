SELECT DISTINCT st.*
FROM student st, student_hobby sh
INNER JOIN
(
SELECT hb.name, hb.id
FROM hobby hb
INNER JOIN
(SELECT count(sh.student_id) as countofhob, sh.hobby_id
FROM student_hobby sh
GROUP BY sh.hobby_id) tt
ON tt.hobby_id = hb.id
ORDER BY tt.countofhob DESC
LIMIT 1
) tt
ON sh.hobby_id = tt.id
WHERE sh.student_id = st.id
