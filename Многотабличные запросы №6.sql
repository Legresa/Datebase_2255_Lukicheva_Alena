SELECT DISTINCT st.n_group, avg(st.score)::numeric(3,2)
FROM student st
INNER JOIN(SELECT DISTINCT sh.student_id
FROM student_hobby sh, hobby hb
WHERE sh.hobby_id = hb.id AND sh.data_end IS NULL) tt
ON tt.student_id = st.id
GROUP BY st.n_group
