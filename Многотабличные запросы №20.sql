SELECT DISTINCT st.n_group
FROM student st
INNER JOIN(
SELECT st.name,st.surname, st.id
FROM student st
INNER JOIN
(SELECT DISTINCT sh.student_id, extract(day from (justify_days(now() - sh.data_start))) as countofdays
FROM student_hobby sh
WHERE sh.data_end IS NULL
ORDER BY countofdays DESC) tt
ON tt.student_id = st.id
ORDER BY countofdays DESC LIMIT 10
) tt
ON tt.id = st.id
