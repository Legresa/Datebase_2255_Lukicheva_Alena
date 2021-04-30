SELECT to_char(st.dateburth, 'MM'), avg(st.score)::numeric(3,2)
FROM student st, student_hobby sh, hobby hb
WHERE st.id = sh.student_id and hb.id = sh.hobby_id and hb.name = 'Танцы'
GROUP BY to_char(st.dateburth, 'MM')
