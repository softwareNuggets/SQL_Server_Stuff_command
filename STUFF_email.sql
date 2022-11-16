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


--fred@email.com => f**d@email.com

select  CHARINDEX('@',email_addr) SymbolIsAtLocation,
		CHARINDEX('@',email_addr)-3 Backup3,
		stuff(email_addr,2
               ,CHARINDEX('@',email_addr)-3
               ,REPLICATE('*',CHARINDEX('@',email_addr)-3))
from #t1

