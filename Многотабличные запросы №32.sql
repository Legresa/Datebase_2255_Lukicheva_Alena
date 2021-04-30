SELECT DISTINCT (('Имя: ' || st.name || ' Фамилия: ' || st.surname || ' Группа: ' || st.n_group)) as dataofstds
FROM student st, student_hobby sh, hobby hb
WHERE st.id = sh.student_id and hb.id = sh.hobby_id
