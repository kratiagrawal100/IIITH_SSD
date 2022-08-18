SELECT WORKS_ON.Essn,count(WORKS_ON.Pno) as no_of_projects from  WORKS_ON inner join 
(SELECT PROJECT.Dnum,DEPARTMENT.Mgr_ssn FROM PROJECT inner join DEPARTMENT
WHERE PROJECT.Pname='ProductY' and DEPARTMENT.Dnumber=PROJECT.Dnum) AS T
where WORKS_ON.Essn=T.Mgr_ssn
group by WORKS_ON.Essn;
