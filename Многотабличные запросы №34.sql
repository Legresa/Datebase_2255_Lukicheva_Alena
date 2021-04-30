CREATE VIEW heshtegs2 AS
SELECT SUBSTRING(st.surname || '##########', 1, 10) as surname
FROM student st
