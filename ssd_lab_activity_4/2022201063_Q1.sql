Drop Procedure if exists Addition
DELIMITER $$

CREATE PROCEDURE Addition(in num1 int,in num2 int,out sum int)
BEGIN
    SELECT num1+num2 into sum;
       
END$$

DELIMITER ;

CALL Addition(5,2,@sum);
select @sum;