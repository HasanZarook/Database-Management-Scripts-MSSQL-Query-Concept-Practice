USE StudentAssessment;

-- Course data

INSERT INTO Course(cr_id, cr_name,CLO_id,CLO_details) 
	Values ('CMPE-1','Database LAB', 'CLO1','critical thinking')

INSERT INTO Course(cr_id, cr_name,CLO_id,CLO_details) 
	Values ('CMPE-2','Operating System LAB', 'CLO2','analysing')

INSERT INTO Course(cr_id, cr_name,CLO_id,CLO_details) 
	Values ('CMPE-3','circuit', 'CLO3','designing')

INSERT INTO Course(cr_id, cr_name,CLO_id,CLO_details) 
	Values ('CMPE-4','PF', 'CLO4','CEP')

INSERT INTO Course(cr_id, cr_name,CLO_id,CLO_details) 
	Values ('CMPE-5','OOP', 'CLO5','developing')


-- Student data

INSERT INTO Student(std_id, std_name, DOB, std_session)
	VALUES ('2021-CE-58',  'hasan', '2001-04-27', '2021');

INSERT INTO Student(std_id, std_name, DOB, std_session)
	VALUES ('2021-CE-52',  'anwaar', '2001-03-27', '2021');

INSERT INTO Student(std_id, std_name, DOB, std_session)
	VALUES ('2021-CE-32',  'abraham', '2001-05-27', '2021');

INSERT INTO Student(std_id, std_name, DOB, std_session)
	VALUES ('2021-CE-33',  'junaid', '2001-06-27', '2021');

INSERT INTO Student(std_id, std_name, DOB, std_session)
	VALUES ('2021-CE-46',  'mohamed', '2001-08-27', '2021');

INSERT INTO Student(std_id, std_name, DOB, std_session)
	VALUES ('2021-CE-53',  'talha', '2001-01-27', '2021');




-- RubricsLevel

INSERT INTO RubricsLevel(r_id, cr_id, r_details, r_levels,CLO_id)
	VALUES ('Design','CMPE-1','find proper solution','4','CLO1');


INSERT INTO RubricsLevel(r_id, cr_id, r_details, r_levels,CLO_id)
	VALUES ('Execution','CMPE-2','running ','4','CLO2');


INSERT INTO RubricsLevel(r_id, cr_id, r_details, r_levels,CLO_id)
	VALUES ('Testing','CMPE-3','working properly','4','CLO3');




--Assessments
INSERT INTO Assessment(asse_id,asse_details,weightage,marks_got)
	VALUES ('quiz1','question1',5,3);

INSERT INTO Assessment(asse_id,asse_details,weightage,marks_got)
	VALUES ('quiz2','question2',4,4);

INSERT INTO Assessment(asse_id,asse_details,weightage,marks_got)
	VALUES ('quiz3','question3',3,2);

INSERT INTO Assessment(asse_id,asse_details,weightage,marks_got)
	VALUES ('quiz4','question4',3,3);

INSERT INTO Assessment(asse_id,asse_details,weightage,marks_got)
	VALUES ('quiz5','question5',5,2);

--AssessmentComponent
INSERT INTO AssessmentComponent(component_id,std_id,total_marks,asseComp_name,r_id,asse_id,cr_id,Comp_marks)
	VALUES ('question1','2021-CE-58','5','evaluating','Design','quiz1','CMPE-1',5);

INSERT INTO AssessmentComponent(component_id,std_id,total_marks,asseComp_name,r_id,asse_id,cr_id,Comp_marks)
	VALUES ('question2','2021-CE-32','6','determining','Testing','quiz2','CMPE-2',5);

INSERT INTO AssessmentComponent(component_id,std_id,total_marks,asseComp_name,r_id,asse_id,cr_id,Comp_marks)
	VALUES ('question3','2021-CE-52','8','evaluating','Execution','quiz3','CMPE-3',5);

INSERT INTO AssessmentComponent(component_id,std_id,total_marks,asseComp_name,r_id,asse_id,cr_id,Comp_marks)
	VALUES ('question4','2021-CE-33','8','determining','Design','quiz4','CMPE-4',5);

INSERT INTO AssessmentComponent(component_id,std_id,total_marks,asseComp_name,r_id,asse_id,cr_id,Comp_marks)
	VALUES ('question5','2021-CE-53','9','evaluating','Design','quiz5','CMPE-5',5);

--ResultStudent
INSERT INTO ResultStudent(std_id,r_measurement_id,component_id)
	VALUES ('2021-CE-58','r_1','question1');

INSERT INTO ResultStudent(std_id,r_measurement_id,component_id)
	VALUES ('2021-CE-52','r_2','question2');

INSERT INTO ResultStudent(std_id,r_measurement_id,component_id)
	VALUES ('2021-CE-33','r_3','question3');

INSERT INTO ResultStudent(std_id,r_measurement_id,component_id)
	VALUES ('2021-CE-52','r_4','question4');

INSERT INTO ResultStudent(std_id,r_measurement_id,component_id)
	VALUES ('2021-CE-53','r_5','question5');