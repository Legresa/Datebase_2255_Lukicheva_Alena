SELECT SUBSTRING(st.n_group::varchar,1,1), st.surname, max(st.score), min(st.score)
FROM student st
GROUP BY SUBSTRING(st.n_group::varchar,1,1), st.surname
ORDER BY SUBSTRING(st.n_group::varchar,1,1) DESC
