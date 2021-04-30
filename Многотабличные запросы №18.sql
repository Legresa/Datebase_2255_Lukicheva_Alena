SELECT DISTINCT hb.id
FROM hobby hb
WHERE hb.risk = (SELECT max(risk)
FROM hobby)
LIMIT 3
