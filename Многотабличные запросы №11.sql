SELECT DISTINCT st.n_group
FROM student st
INNER JOIN(SELECT st.n_group, count(st.id) as countofstd, sum(st.score)
FROM student st
WHERE st.score >= 4
GROUP BY st.n_group) tt
ON st.n_group = tt.n_group
INNER JOIN(SELECT st.n_group, count(st.id) as countofstd
FROM student st
GROUP BY st.n_group) ttt
ON st.n_group = ttt.n_group
WHERE ttt.countofstd / 100 * 60 <= ttt.countofstd
