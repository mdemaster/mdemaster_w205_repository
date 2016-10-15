select state, avg(score) as avgscore from state_procedure_scores group by state order by avgscore desc limit 10;
