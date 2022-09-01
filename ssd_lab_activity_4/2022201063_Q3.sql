Drop Procedure if exists CustomerData;
DELIMITER $$
CREATE  PROCEDURE CustomerData()
BEGIN
    SELECT CUST_NAME,GRADE from customer
    where OPENING_AMT+RECEIVE_AMT>10000;
       
END$$

DELIMITER ;
CALL CustomerData();