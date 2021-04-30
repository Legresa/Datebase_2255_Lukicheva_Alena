SELECT SUBSTRING(st.name,1,1), max(hb.risk), min(hb.risk)
FROM student st, student_hobby sh, hobby hb
WHERE st.id = sh.student_id and hb.id = sh.hobby_id
GROUP BY SUBSTRING(st.name,1,1)
