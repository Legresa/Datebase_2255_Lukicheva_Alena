SELECT CASE
WHEN count(st.surname) > 0 THEN count(st.surname)::varchar
ELSE 'Не найдено'
END AS countofstd
FROM student st
WHERE st.surname like '%ов%'
