select * from Customers

-- without cursor variables

declare mycursor1 cursor scroll for select * from Customers
open mycursor1
fetch first from mycursor1
fetch next from mycursor1
fetch last from mycursor1
fetch prior from mycursor1
fetch absolute 4 from mycursor1
fetch relative -1 from mycursor1
close mycursor1
deallocate mycursor1





-- with cursor variables

declare mycursor1 cursor scroll for select EmployeeID , Name from Customers
declare @emp_id int , @emp_name nvarchar(50)
open mycursor1
fetch first from mycursor1 into @emp_id , @emp_name
print 'Employee id: ' + cast(@emp_id as nvarchar(50)) +' '+ @emp_name

fetch next from mycursor1 into @emp_id , @emp_name
print 'Employee id: ' + cast(@emp_id as nvarchar(50)) +' '+ @emp_name

fetch last from mycursor1 into @emp_id , @emp_name
print 'Employee id: ' + cast(@emp_id as nvarchar(50)) +' '+ @emp_name	

fetch prior from mycursor1 into @emp_id , @emp_name
print 'Employee id: ' + cast(@emp_id as nvarchar(50)) +' '+ @emp_name	

fetch absolute 4 from mycursor1 into @emp_id , @emp_name
print 'Employee id: ' + cast(@emp_id as nvarchar(50)) +' '+ @emp_name	

fetch relative -1 from mycursor1 into @emp_id , @emp_name
print 'Employee id: ' + cast(@emp_id as nvarchar(50)) +' '+ @emp_name	
close mycursor1
deallocate mycursor1


