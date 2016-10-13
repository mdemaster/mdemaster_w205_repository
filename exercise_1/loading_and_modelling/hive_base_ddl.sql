DROP TABLE HOSPITAL_SCORES;
CREATE EXTERNAL TABLE HOSPITAL_SCORES(Provider_ID string, Hospital_Name string, Address string, City string, State string, ZIP_Code string, County string, Phone string, Condtion string, Measure_ID string, Measure_Name string, Score string, Sample string, Footnote string, Measure_State string, Measure_End_Date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/Timely_and_Effective_Care_Hospital';

DROP TABLE STATE_SCORES;
CREATE EXTERNAL TABLE STATE_SCORES(State string, Condition string, Measure_Name string, Measure_ID string, Score string, Footnote string, Measure_Start_Date string, Measure_End_Date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/Timely_and_Effective_Care_State';


DROP TABLE HOSPITAL_SURVEYS;
CREATE EXTERNAL TABLE HOSITAL_SURVEYS(Provider_ID string, Hospital_Name string, Address string, City string, State string, ZIP_Code string, County_Name string, Phone_Number string,HCAHPS_Measure_ID string,HCAHPS_Question string, HCAHPS_Answer_Description string, Patient_Survey_Star_Rating string, Patient_Survey_Star_Rating_Footnote string, HCAHPS_Answer_Percent string, HCAHPS_Answer_Percent_Footnote string, Number_of_Completed_Surveys string, Number_of_Completed_Surveys_Footnote string, Survey_Response_Rate_Percent string, Survey_Response_Rate_Percent_Footnote string,Measure_Start_Date string, Measure_End_Date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"', "escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/HCAHPS_Hospital';

