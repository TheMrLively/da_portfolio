--What is the average participation in classes, workshiops, and labs for enrollees by race / native language? 

SELECT race_ethnicity,
  native_language,
  COUNT (studid)Total_Students,
  ROUND (AVG (class_hours),2)as Class_Hours,
  ROUND (AVG (wkshp_hours),2) as Workshop_Hours,
  ROUND (AVG (lab_hours),2) as Lab_Hours,
  ROUND (AVG (total_hours),2) as Total
FROM gwpd.py1718
GROUP BY race_ethnicity, native_language
HAVING COUNT (studid) >25
ORDER BY Total
