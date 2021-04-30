SELECT st.name, st.surname, hb.name
FROM student st, hobby hb, student_hobby sh
WHERE sh.student_id = st.id AND sh.hobby_id = hb.id
