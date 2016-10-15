select provider_id, hospital_name, avg(score) as average_score from provider_procedure_scores group by provider_id, hospital_name order by average_score desc limit 10;
