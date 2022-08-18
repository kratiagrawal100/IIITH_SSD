/*select Concat(EMPLOYEE.Fname,' ',EMPLOYEE.Lname) as FullName,EMPLOYEE.Ssn,DEPARTMENT.Dnumber,DEPARTMENT.Dname
from EMPLOYEE INNER JOIN DEPARTMENT
WHERE EMPLOYEE.Ssn=DEPARTMENT.Mgr_ssn and EMPLOYEE.Ssn in (

select Distinct EMPLOYEE.Ssn
from EMPLOYEE Inner join WORKS_ON
where EMPLOYEE.Ssn=WORKS_ON.Essn and WORKS_ON.Hours<40);*/


select concat(EMPLOYEE.Fname,' ',EMPLOYEE.Lname ) as fullname,EMPLOYEE.Ssn,DEPARTMENT.Dnumber,DEPARTMENT.Dname FROM EMPLOYEE inner join
(select Sum(WORKS_ON.Hours) as hours,WORKS_ON.Essn from WORKS_ON
group by WORKS_ON.Essn) as T inner join DEPARTMENT
where EMPLOYEE.Ssn=T.Essn AND EMPLOYEE.Ssn=DEPARTMENT.Mgr_ssn and T.hours<40;



