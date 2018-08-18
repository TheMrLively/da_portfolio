# Race and Language Queries
These queries look at student participation depending on Race and Native Language.

## Ind_vs-Group_Race_Lang_Hours.sql
This query answers the question, "How do student's participation hours compare to the average of student's participation hours of their race/language?"  It creates a new table with a WITH AS statement to create a new table that can be used to query against the original table. 
## Race_Lang_AvgHours.sql
This query answers the question, "What is the average participation in classes, workshiops, and labs for enrollees by race / native language?"  
## Race_Lang_CM_Serv.sql
This query answers the question, "What is the race/native language of students who received case management services in each program?" 
It uses CAST in order to change a columns decimal format from integer format in order to perform calculations. It also uses a HAVING statement to group data by an aggregate.  
## Race_Lang_ES_Serv.sql
This query answers the question, "What is the race/native language of students who received employment services in each program?"
It uses CAST in order to change a columns decimal format from integer format in order to perform calculations. It also uses a HAVING statement to group data by an aggregate.
## Race_Lang_Income
This query answers the question, "What is the individual's income as a percentage of family income by race/native language?"  This query uses a CASE statement to determine how to calculate the income percentage using a NULL when the family income is 0.  

