DROP TABLE Provider_Procedure_Scores;
CREATE TABLE Provider_Procedure_Scores AS SELECT Provider_ID,Hospital_Name,State,Measure_ID,Measure_Name,Score FROM Hospital_Scores
where substring(Score,1,1) not in ('H','L','M','N','V');

DROP TABLE State_Procedure_Scores;
CREATE TABLE State_Procedure_Scores AS SELECT State, Measure_ID, Measure_Name, Score FROM State_Scores
where substring(Score,1,1) not in ('N');

DROP TABLE Provider_Surveys;
CREATE TABLE Provider_Surveys AS SELECT Provider_ID, Hospital_Name, State, hcahps_measure_id as Question, patient_survey_star_rating as Rating FROM Hospital_Surveys
where substring(patient_survey_star_rating,1,1) not in ('N');
