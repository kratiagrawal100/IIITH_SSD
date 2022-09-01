Drop Procedure if exists cursor1;
DELIMITER $$
CREATE PROCEDURE cursor1 (
)
begin
DECLARE finished INTEGER DEFAULT 0;
DECLARE cname varchar(100);
DECLARE ccity varchar(100);
DECLARE ccountry varchar(100);
DECLARE cgrade varchar(100);
DECLARE c1 CURSOR FOR select CUST_NAME,CUST_CITY,CUST_COUNTRY,GRADE from customer where AGENT_CODE like ('A00%');
DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
        OPEN c1;
getDetails: LOOP
		FETCH c1 INTO cname,ccity,ccountry,cgrade;
		IF finished = 1 THEN 
			LEAVE getDetails;
		END IF;
        SELECT cname,ccity,ccountry,cgrade;
        END LOOP getDetails;
END $$
DELIMITER ;
CALL cursor1();