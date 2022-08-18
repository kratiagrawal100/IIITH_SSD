select EMPLOYEE.Fname,EMPLOYEE.Lname ,T.empcount,T.super_ssn,DEPARTMENT.Dnumber FROM EMPLOYEE INNER JOIN 
(select count(EMPLOYEE.Ssn) AS empcount,EMPLOYEE.Super_ssn
FROM EMPLOYEE
where Super_ssn is not null 
group by EMPLOYEE.Super_ssn) AS T inner JOIN DEPARTMENT
where EMPLOYEE.Ssn=T.Super_ssn AND DEPARTMENT.Mgr_ssn=EMPLOYEE.Ssn
ORDER BY T.empcount;

