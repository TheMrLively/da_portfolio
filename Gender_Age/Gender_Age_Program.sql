WITH ABE_Bellingham AS 
(SELECT program, gender, age
FROM gwpd.py1718
WHERE program = 'ABE Bellingham'),

ABE_Burien AS 
(SELECT program, gender, age
FROM gwpd.py1718
WHERE program = 'ABE Burien')

SELECT program, gender, age 
FROM ABE_Bellingham
UNION SELECT * FROM ABE_Burien
ORDER BY age DESC