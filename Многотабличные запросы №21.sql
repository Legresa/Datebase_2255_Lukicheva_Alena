CREATE OR REPLACE VIEW ST_score_down AS
SELECT st.id, st.name, st.surname
FROM student st
ORDER BY st.score DESC
