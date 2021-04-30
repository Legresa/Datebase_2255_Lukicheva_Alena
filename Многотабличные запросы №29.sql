SELECT DISTINCT to_char(st.dateburth, 'YYYY'), count(sh.hobby_id)
FROM student st, student_hobby sh
WHERE st.id = sh.student_id
GROUP BY to_char(st.dateburth, 'YYYY')
