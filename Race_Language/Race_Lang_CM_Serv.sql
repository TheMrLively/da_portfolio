﻿--What is the race/native language of students who received Case Management services?

SELECT program,
	race_ethnicity,
	native_language,
	COUNT (cm_services) as Got_CM,
	COUNT (studid) as Student_Count,
	ROUND (CAST (COUNT (cm_services)as decimal)/ CAST (COUNT (studid) as decimal),2) as Percent_Served
FROM gwpd.py1718

--To see results from individual programs use a where statement see example below
--WHERE program = 'ABE Bellingham'
GROUP BY program, race_ethnicity, native_language

--Using HAVING is important here because, we want to see groups with more than 25 students who meet the criteria
HAVING COUNT (studid) >= 25

ORDER BY Percent_Served DESC
