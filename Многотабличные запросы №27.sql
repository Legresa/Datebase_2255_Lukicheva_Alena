SELECT max(st.score), min(st.score), avg(st.score)::numeric(5,4), SUBSTRING(st.name,1,1)
FROM student st
GROUP BY SUBSTRING(st.name,1,1)
HAVING max(st.score) > 3.6
ORDER BY SUBSTRING(st.name,1,1) DESC
