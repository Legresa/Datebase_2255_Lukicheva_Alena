SELECT name, surname
FROM student
WHERE score = (
SELECT max(score)
FROM student
WHERE n_group = '2255') AND n_group = '2255'
