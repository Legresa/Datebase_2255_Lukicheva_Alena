SELECT DISTINCT st.score, st.name, st.surname, st.dateburth
FROM student st
INNER JOIN
(
SELECT SUM(hb.risk) as r_summ, sh.student_id
FROM hobby hb,
student_hobby sh
WHERE hb.id= sh.hobby_id AND sh.data_end IS NULL
GROUP BY sh.student_id
)t
ON st.id = t.student_id
AND t.r_summ > 9
WHERE st.score >
(
SELECT AVG(score)::numeric(3,2)
FROM student
)
