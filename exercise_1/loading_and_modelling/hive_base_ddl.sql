DROP TABLE HOSPITAL_SCORES;
CREATE EXTERNAL TABLE HOSPITAL_SCORES(Provider_ID varchar(500), Hospital_Name varchar(500), Address varchar(500), City varchar(500), State varchar(500), ZIP_Code varchar(500), County varchar(500), Phone varchar(500), Condtion varchar(500), Measure_ID varchar(500), Measure_Name varchar(500), Score varchar(500), Sample varchar(500), Footnote varchar(500), Measure_State varchar(500), Measure_End_Date varchar(500))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/Timely_and_Effective_Care_Hospital';

DROP TABLE STATE_SCORES;
CREATE EXTERNAL TABLE STATE_SCORES(State varchar(500), Condition varchar(500), Measure_Name varchar(500), Measure_ID varchar(500), Score varchar(500), Footnote varchar(500), Measure_Start_Date varchar(500), Measure_End_Date varchar(500))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/Timely_and_Effective_Care_State';


DROP TABLE HOSPITAL_SURVEYS;
CREATE EXTERNAL TABLE HOSPITAL_SURVEYS(Provider_ID varchar(500), Hospital_Name varchar(500), Address varchar(500), City varchar(500), State varchar(500), ZIP_Code varchar(500), County_Name varchar(500), Phone_Number varchar(500), HCAHPS_Measure_ID varchar(500), HCAHPS_Question varchar(500), HCAHPS_Answer_Description varchar(500), Patient_Survey_Star_Rating varchar(500), Patient_Survey_Star_Rating_Footnote varchar(500), HCAHPS_Answer_Percent varchar(500), HCAHPS_Answer_Percent_Footnote varchar(500), Number_of_Completed_Surveys varchar(500), Number_of_Completed_Surveys_Footnote varchar(500), Survey_Response_Rate_Percent varchar(500), Survey_Response_Rate_Percent_Footnote varchar(500),Measure_Start_Date varchar(500), Measure_End_Date varchar(500))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/HCAHPS_Hospital';

