select W.essn, DEPARTMENT.Dnumber,W.no_of_dependents from DEPARTMENT inner join (select DEPENDENT.Essn as essn,count(*) as no_of_dependents from DEPENDENT INNER JOIN 
(SELECT DEPARTMENT.Mgr_ssn AS MSsn ,T.location_no,T.Dnum as Dnumber from DEPARTMENT inner join 

(select count(DEPT_LOCATIONS.Dlocation) as location_no,DEPT_LOCATIONS.Dnumber as Dnum
from DEPT_LOCATIONS
group by DEPT_LOCATIONS.Dnumber
having count(DEPT_LOCATIONS.Dlocation)>=2) as T
where DEPARTMENT.Dnumber=T.Dnum) AS R
WHERE DEPENDENT.Essn=R.Mssn
group by DEPENDENT.Essn) as W
where DEPARTMENT.Mgr_ssn=W.essn;
