--Which training center serves the students from the most different cities?

WITH city_count AS (
SELECT program,
	zip_info.city,
	zip_info.county,
	zip_info.state,
	gwpd.py1718.zip,
	COUNT (zip_info.city) as cc,
	COUNT (gwpd.py1718.zip) as zc
FROM gwpd.py1718
LEFT JOIN gwpd.zip_info ON zip = zip_code
GROUP BY program, zip_info.city, zip_info.county, zip_info.state, gwpd.py1718.zip
ORDER BY COUNT (zip_info.city) desc
	)

SELECT program,
	COUNT(city_count.cc),
	COUNT(city_count.zc)
FROM city_count
GROUP BY program
ORDER BY COUNT(city_count.zc) desc
