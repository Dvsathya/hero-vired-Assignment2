create table contact(
	Id integer primary key not null,
    Email varchar(30) not null,
    fname varchar(30) not null,
    lname varchar(30) not null,
    company varchar(30) not null,
    Active_flag boolean not null,
    opt_out boolean not null
);

select * from contact;

insert into contact(Id, Email, fname, lname, company, Active_Flag, opt_out) values
(123,"a@a.com","Kian","Seth","ABC",	1,1),
(133,"b@a.com","Neha","Seth","ABC",1,0),
(234,"c@c.com","Puru","Malik","CDF",0,0),
(342,"d@d.com","Sid","Maan","TEG",1,0);


-- QUESTIONS:

-- Select all columns from the contact table where the active flag is 1
select * from contact where Active_Flag = 1;

-- Deactivate contacts who are opted out 
update contact SET Active_Flag = 0 WHERE opt_out = 1;

-- Delete all the contacts who have the company name as ‘ABC’
delete from contact where company="ABC";

-- Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
insert into contact(Id, Email, fname, lname, company, Active_Flag, opt_out) values
(658,"mili@gmail.com","mili","maan","DGH",1,1);


-- Pull out the unique values of the company column 
select distinct(company) from contact;

-- Update name “mili” to “niti”.
update contact set fname = "niti" where fname = "mili";
