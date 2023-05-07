-- Create a database schema for the online consultation and therapy website. The database should contain the following tables:-

-- Doctor table:- The table should contain the attributes such as id, name, specialization, etc.

-- Appointments table:- The table should contain information related to appointments set up by doctors and patients.

-- Patient table:- The table should contain information on patients.

-- Reviews table:- This table should contain reviews posted by patients.


-- NOTE:- Use proper constraints on the attributes such as primary key, not null and etc.


-- Creating a database called online_consultation

create database online_consultation;
-- Creating a doctors table
create table doctors(
doctor_id int primary key not null,
Doctor_name varchar(20) not null,
specilization varchar(20) not null );
select * from doctors;

-- creating a patients table
create table patients(
patient_id int primary key not null,
patient_name varchar(20) not null,
age int not null,
contact_num int unique not null,
gender varchar(20) not null,
health_problem varchar(20) not null);

select * from patients;

-- creating appointment table

create table appointments(
appointment_id int primary key not null,
patient_id int not null,
doctor_id int not null,
patient_name varchar(20) not null,
appointment_date date not null,
foreign key(doctor_id)references doctors(doctor_id),
foreign key(patient_id)references patients(patient_id)
);
select * from appointments;

-- creating reviews table

create table reviews(
	Review_no int primary key not null,
    Doctor_Id integer not null,
    Patient_id int not null,
    Reviewer varchar(30) not null,
    Rating int not null,
    Review_Date date ,
    Review_Description varchar(50) not null,
    foreign key(Doctor_Id) references doctors(doctor_Id),
   foreign key(Patient_id)references Patients(Patient_id)
);

select * from reviews;





