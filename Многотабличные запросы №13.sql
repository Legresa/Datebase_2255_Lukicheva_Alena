SELECT st.id, st.name, st.surname, st.dateburth, SUBSTRING(st.n_group::varchar,1,1) as course
FROM student st
WHERE st.score = 5
EXCEPT SELECT DISTINCT stb.id, stb.name, stb.surname, stb.dateburth, SUBSTRING(stb.n_group::varchar,1,1) as course
FROM student_hobby sh, student stb
WHERE stb.id = sh.student_id AND sh.data_end IS NULL
ORDER BY course, dateburth
