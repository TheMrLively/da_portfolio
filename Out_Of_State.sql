Which program has the most students who identify as coming from out of state? 

WITH out_of_state AS (
	SELECT program, zip_info.city, zip_info.county, zip_info.state, COUNT (program) 
	FROM gwpd.py1718
	LEFT JOIN gwpd.zip_info ON zip = zip_code
	WHERE zip_info.state != 'WA'
	GROUP by program, zip_info.city, zip_info.county, zip_info.state
) 

SELECT program, COUNT (program)
FROM out_of_state
GROUP BY program
ORDER BY COUNT (program) desc