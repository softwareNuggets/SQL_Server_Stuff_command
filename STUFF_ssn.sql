create table #t1
(
	id int identity(1,1) not null,
	patient_name nvarchar(40) not null,
	ssn varchar(11) not null,
	email_addr varchar(60)
);

insert into #t1(patient_name, ssn, email_addr)
values
('fred sandford','111-11-0001','fred@email.com'),
('wilma stone','222-22-1112','wstone@longemail.com'),
('red baron','333-33-3334','rbaron@flight.com')

select *
from #t1


--111-11-0001
select patient_name, ssn, 
		stuff(ssn,5,2,'######') Six, 
		stuff(ssn,5,2,'##') Two, 
		stuff(ssn,8,4,'#') One
from #t1














--111-11-1111
--
select patient_name, ssn, len(ssn) LenOfSSN,
		stuff(ssn, 3, len(ssn)-3, replicate('#', len(ssn)-5))
from #t1
