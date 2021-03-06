﻿--What is the individual's income as a percentage of family income by race/native language? (At least 25 students)

SELECT race_ethnicity,
	native_language,
	COUNT (studid) as Student_Count,
	AVG (ind_monthly_income) as Ind_Income,
	AVG (fam_monthly_income) as Fam_Income,
	CASE
		WHEN AVG (fam_monthly_income) > 0 THEN
		ROUND ((AVG (ind_monthly_income)/AVG (fam_monthly_income)),2)
		WHEN AVG (fam_monthly_income) = 0 THEN NULL
		END Ind_Fam_Percent
FROM gwpd.py1718
GROUP BY race_ethnicity, native_language

--Using HAVING is important here because, we want to see groups with more than 25 students who meet the criteria
HAVING COUNT (studid) >= 25
ORDER BY Ind_Fam_Percent asc
