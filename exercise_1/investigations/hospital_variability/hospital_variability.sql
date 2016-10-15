select measure_id, measure_name, variance(score) as var_score from provider_procedure_scores group by measure_id, measure_name order by var_score desc limit 10;

