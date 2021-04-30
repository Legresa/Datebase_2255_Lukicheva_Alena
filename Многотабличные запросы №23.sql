CREATE OR REPLACE VIEW Cour2TopRiskHob AS
SELECT hobbyname, tt.risk
FROM TopHb th
INNER JOIN (SELECT hb.risk, hb.name
FROM hobby hb) tt
ON tt.name = th.hobbyname
WHERE course = '2'
ORDER BY tt.risk DESC
