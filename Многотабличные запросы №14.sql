CREATE OR REPLACE VIEW Student_5yearhobby AS
SELECT st.*
FROM student st, student_hobby sh
WHERE st.id = sh.student_id AND sh.data_end IS NULL AND (to_char('2025-05-10'::date, 'YYYY')::int * 12 * 30 + to_char('2025-05-10'::date, 'MM')::int * 30 + to_char('2025-05-10'::date, 'DD')::int - to_char(sh.data_start, 'YYYY')::int * 12 * 30 + to_char(sh.data_start, 'MM')::int * 30 + to_char(sh.data_start, 'DD')::int) / 30 / 12 >= 5
