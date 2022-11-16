declare @str varchar(20) = 'abcdefghij';



select @str,
		stuff(@str,1,1,'XXX'),
		stuff(@str,2,1,'YYYYY'),
		stuff(@str,3,3,'-')




			   		 	  



-- third example			find position 3
--							high light 3 character
--							replace that 1 character with '-'
-- 1234567890
-- ab-fghij


	

-- first example			find position 1
--							high light 1 character
--							replace that 1 character with 'XXX'
-- 1234567890
-- XXXbcdefghij






-- second example			find position 2
-- 							high light 1 character
--							replace that 1 character with 'YYYYY'
-- 1234567890
-- aYYYYYcdefghij
