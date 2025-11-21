CREATE OR REPLACE TRIGGER trg_salary_audit
AFTER UPDATE OF first_name on EMP_COPY
for each row
begin
   dbms_output.put_line('Old:'|| '' || :OLD.FIRST_NAME || '' || ' NEW VALUE:' || ' ' || :NEW.first_name);
    insert into emp_audit(
        employee_id,
        old_name,
        new_name,
        changed_on
    ) values ( :OLD.employee_id, :OLD.first_name, :NEW.first_name, SYSDATE );    
END;
/
 
