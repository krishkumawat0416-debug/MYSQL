-- use krish1;
-- DELIMITER $$

-- CREATE PROCEDURE GetCustomers1()
-- BEGIN
-- 	SELECT * from sakila.actor;
-- 	   
-- END$$
-- DELIMITER ;


-- DELIMITER //

-- create procedure Getp2(In eid int)

-- BEGIN 
--    select * from sakila.actor where actor_id = eid;
--    
-- END //
--    
-- DELIMITER ;


DELIMITER //

CREATE PROCEDURE Getp4(inout var int)

BEGIN
  SELECT COUNT(*) into var from sakila.actor where actor_id < var and actor_id > 2;
END //

DELIMITER ;
