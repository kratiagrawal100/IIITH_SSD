Drop Procedure if exists CustomerLocation;
DELIMITER $$
CREATE  PROCEDURE CustomerLocation(in location nvarchar(30))
BEGIN
    SELECT CUST_NAME from CUSTOMER_DB.customer
    where WORKING_AREA=location;
       
END$$

DELIMITER ;

CALL CustomerLocation('Bangalore');
