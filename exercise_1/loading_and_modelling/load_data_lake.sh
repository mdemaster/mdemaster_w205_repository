wget "https://data.medicare.gov/views/bg9k-emty/files/2eed33f4-d8c8-4ed7-8aed-e4ca2885cb0a?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip" -O medicarefiles
unzip medicarefiles
tail -n +2 "/data/exercise1/Timely and Effective Care - Hospital.csv" > /data/exercise1/noheaderfiles/Timely_and_Effective_Care_Hospital.csv
tail -n +2 "/data/exercise1/Timely and Effective Care - State.csv" > /data/exercise1/noheaderfiles/Timely_and_Effective_Care_State.csv
tail -n +2 "/data/exercise1/HCAHPS - Hospital.csv" > /data/exercise1/noheaderfiles/HCAHPS_Hospital.csv
hdfs dfs -put /data/exercise1/noheaderfiles/HCAHPS_Hospital.csv /user/w205/hospital_compare/
hdfs dfs -put /data/exercise1/noheaderfiles/Timely_and_Effective_Care_State.csv /user/w205/hospital_compare/ 
hdfs dfs -put /data/exercise1/noheaderfiles/Timely_and_Effective_Care_Hospital.csv /user/w205/hospital_compare/ 

