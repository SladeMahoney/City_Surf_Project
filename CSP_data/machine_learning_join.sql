CREATE TABLE distinct_program_count (
	Participant_ID INT NOT NULL PRIMARY KEY,
	Distinct_Program_Count INT NOT NULL
);

SELECT * FROM distinct_program_count;


SELECT dis.participant_id, 
	   dis.distinct_program_count,
	   demo.date_of_birth,
	   demo.city,
	   demo.home_zip_code,
	   demo.race_ethnicity,
	   demo.gender,
	   demo.school_attending,
	   demo.school_entry_date,
	   demo.grade_level_FY18_19,
	   demo.grade_level_FY19_20,
	   demo.csp_enrollment_date,
	   demo.csp_approx_enrollment_age
INTO machine_learning_data
FROM distinct_program_count as dis
INNER JOIN Student_demo as demo
ON dis.participant_id = demo.participant_id

SELECT * FROM machine_learning_data;
