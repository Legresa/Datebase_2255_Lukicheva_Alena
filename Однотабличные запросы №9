SELECT *,
CASE
WHEN bb.risk >= 8 THEN 'Очень высокий'
WHEN bb.risk < 8 AND bb.risk >= 6 THEN 'Высокий'
WHEN bb.risk < 6 AND bb.risk >= 4 THEN 'Средний'
WHEN bb.risk < 4 AND bb.risk >= 2 THEN 'Низкий'
ELSE 'Очень низкий'
END AS Category
FROM hobby bb
