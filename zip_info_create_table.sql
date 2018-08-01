CREATE TABLE IF NOT EXISTS gwpd.zip_info ( 
	zip_code varchar(5), 
	latitude decimal, 
	longitude decimal,
	city varchar(50),
	state varchar(2),
	county varchar(50)
	);

COPY gwpd.zip_info
FROM 'C:/users/blindsey/downloads/zip_codes_states.csv'
	DELIMITER ',' CSV HEADER;

