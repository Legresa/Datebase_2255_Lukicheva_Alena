SELECT
count(sh.student_id), SUBSTRING(st.n_group::varchar, 1,1)
FROM student_hobby sh, student st
WHERE sh.data_end IS NULL AND sh.student_id = st.id
GROUP BY SUBSTRING(st.n_group::varchar,1,1)
