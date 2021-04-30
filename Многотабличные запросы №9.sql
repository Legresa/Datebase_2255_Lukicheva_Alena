SELECT hb.name
FROM hobby hb
INNER JOIN student_hobby sh on sh.hobby_id = hb.id AND sh.data_end IS NULL
INNER JOIN student st on st.id = sh.dfstudent_id
WHERE SUBSTRING(st.n_group::varchar, 1,1) = '2' AND st.score >= 3 AND st.score < 4
