
BEGIN;

CREATE SCHEMA IF NOT EXISTS gwpd;

CREATE TABLE IF NOT EXISTS gwpd.py1718(
	program text, 
	studid text,  
	class_hours decimal, 
	wkshp_hours decimal, 
	lab_hours decimal, 
	total_hours decimal,
	age decimal, 
	gender text, 
	race_ethnicity text,
	home_country text,
	native_language text,
	ed_level text,
	zip text, 
	housing_sit text, 
	adults_num decimal, 
	children_num decimal, 
	ind_monthly_income decimal, 
	fam_monthly_income decimal, 
	internet_access text, 
	internet_device text, 
	EmployedAtIntake text, 
	LookingForWork text, 
	LookingSoon text, 
	job_placed text, 
	ed_placed text, 
	esd_placed text, 
	CM_Services text, 
	ES_Services text, 
	PieStatus text
	);

COPY gwpd.py1718
FROM 'C:/Users/blindsey/documents/galvanize/Demographics_Participation_and_Status.csv'  
	DELIMITER ','
	CSV HEADER;                   

COMMIT;

