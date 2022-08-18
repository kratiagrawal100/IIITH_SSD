select DEPARTMENT.Dnumber,DEPARTMENT.Dname,count(DEPT_LOCATIONS.Dlocation) as No_of_locations from DEPARTMENT inner join
(select COUNT(Essn),DEPENDENT.Essn as Essn from DEPENDENT
where Sex='F'
GROUP BY Essn) as T inner join DEPT_LOCATIONS
where DEPARTMENT.Mgr_ssn=T.Essn and DEPARTMENT.Dnumber=DEPT_LOCATIONS.Dnumber
group by DEPARTMENT.Dnumber;


/*group by Essn;

SELECT * FROM DEPENDENT;*/