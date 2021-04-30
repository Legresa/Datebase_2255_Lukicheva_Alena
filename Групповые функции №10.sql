SELECT st.name, st.surname, st.n_group
FROM student st
INNER JOIN
(SELECT n_group, max(score) as mm
FROM student
GROUP BY n_group) tt
ON st.n_group = tt.n_group
AND st.score = tt.mm
