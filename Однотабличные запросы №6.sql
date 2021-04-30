SELECT std.student_id, std.hobby_id 
FROM student_hobby std 
WHERE (std.data_start BETWEEN '2020-02-10' AND '2020-03-01')
AND (std.data_end IS NULL)
