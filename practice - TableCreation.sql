USE StudentAssessment;


CREATE TABLE Course (
	cr_id VARCHAR(8) PRIMARY KEY,
	cr_name VARCHAR(20),
	CLO_details VARCHAR(55),
	CLO_id varchar(10)
);

CREATE TABLE Student(
	std_id VARCHAR(55) PRIMARY KEY,
	std_name VARCHAR(50),
	DOB DATE,
	std_session VARCHAR(55),
	
);



CREATE TABLE RubricsLevel (
	r_id VARCHAR(30),
	cr_id VARCHAR(8),
	r_details VARCHAR(250),
	r_levels VARCHAR(250),
	CLO_id Varchar(20)

	PRIMARY KEY (r_id),
	FOREIGN KEY ( cr_id) REFERENCES Course(cr_id)
);

create table Assessment(
asse_details varchar(250),
marks_got int,
asse_id varchar(20) primary key,
weightage int

);

CREATE TABLE AssessmentComponent(
	std_id VARCHAR(55) FOREIGN KEY REFERENCES Student(std_id),
	total_marks FLOAT,
	asseComp_name VARCHAR(30),
	r_id VARCHAR(30) foreign key references RubricsLevel(r_id),   --this is for accessing rubrics level
	asse_id varchar(20) foreign key references Assessment(asse_id),
	cr_id VARCHAR(8) FOREIGN KEY REFERENCES Course(cr_id),
	Comp_marks float,
	component_id varchar (20) primary key
);

create table ResultStudent(
std_id varchar(55),
r_measurement_id varchar(20),
component_id varchar (20) foreign key references AssessmentComponent(component_id),
FOREIGN KEY ( std_id) REFERENCES Student(std_id)
);

