-- Create table for complete schools clean
CREATE TABLE schools (
	Program_Name VARCHAR,
	Fiscal_year VARCHAR,
	Activity_Name VARCHAR,
	Activity_category VARCHAR, 
	Activity_Instance_ID INT PRIMARY KEY,
	Activity_Label VARCHAR,
	Service_Site_Name VARCHAR,
	School VARCHAR,
	Service_Site_Address VARCHAR,
	Start_date DATE,
	End_date DATE,
	Days_of_Week VARCHAR,
	Time VARCHAR,
	Total_program_days INT
);

SELECT * FROM schools
-- Create table for activity and student participation
CREATE TABLE activity_student_count (
	Activity_Instance_ID INT PRIMARY KEY,
	Attendance_Count INT
)

SELECT * FROM activity_student_count

--Join for schools, activity dates and participation
SELECT counts.activity_instance_id,
	   counts.attendance_count,
	   cool.program_name,
	   cool.fiscal_year,
	   cool.activity_name,
	   cool.activity_category,
	   cool.activity_label,
	   cool.service_site_name,
	   cool.school,
	   cool.service_site_address,
	   cool.start_date,
	   cool.end_date,
	   cool.days_of_week,
	   cool.time,
	   cool.total_program_days
INTO program_attendance
FROM activity_student_count as counts 
INNER JOIN schools as cool
ON counts.activity_instance_id = cool.activity_instance_id

SELECT * FROM program_attendance

-- Create table for students with attendance
CREATE TABLE attended_activity (
	Activity_Name VARCHAR,
	Activity_Instance_ID INT,
	Participant_ID INT, 
	Date DATE,
	Attended VARCHAR,
	Minutes_Attended REAL );
	
SELECT * FROM attended_activity

DROP TABLE attended_activity
	
--Join participants with attendance to schools sheet
SELECT
	   aa.activity_instance_id,
	   aa.participant_id,
	   aa.date,
	   cool.fiscal_year,
	   cool.activity_name,
	   cool.activity_category,
	   cool.activity_label,
	   cool.school,
	   cool.start_date,
	   cool.end_date,
	   cool.total_program_days
INTO participant_activity_attendance
FROM attended_activity as aa 
INNER JOIN schools as cool
ON aa.activity_instance_id = cool.activity_instance_id
















