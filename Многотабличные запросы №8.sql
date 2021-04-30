SELECT hb.name
FROM student st
INNER JOIN student_hobby sh on sh.student_id = st.id
INNER JOIN hobby hb on hb.id = sh.hobby_id
WHERE st.score = (SELECT max(st.score)
FROM student st)
