SELECT st.name, st.surname, sh.data_start
FROM student st, student_hobby sh
WHERE st.id = sh.student_id AND sh.data_end IS NULL
ORDER BY sh.data_start
LIMIT 1
