create or replace trigger insert_print_message
before insert on hr.emp_copy
for each row
BEGIN
     DBMS_OUTPUT.PUT_LINE('A new row is being inserted!');
END;  
/