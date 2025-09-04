-- obtained marks = (student rubric level / max(rubric level) ) * component marks
WITH temp_table(a, b, c, d, tmp) as (SELECT std_id, cr_id, asse_id, component_id, CAST(Comp_marks as FLOAT) / CAST ((
		SELECT MAX(r_levels) as max_lvl
		FROM RubricsLevel
		WHERE cr_id = cr_id AND CLO_id = CLO_id AND r_details = r_details
) as float)*Comp_marks as tmp
FROM AssessmentComponent)

UPDATE AssessmentComponent
SET AssessmentComponent.total_marks = temp_table.tmp
FROM AssessmentComponent
	INNER JOIN temp_table
	on std_id = a AND cr_id = b AND asse_id = c AND component_id = d