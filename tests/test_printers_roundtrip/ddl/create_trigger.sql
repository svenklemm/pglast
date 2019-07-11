CREATE TRIGGER trig1 BEFORE INSERT OR UPDATE OF c1 OR DELETE ON table1
FOR EACH ROW EXECUTE PROCEDURE trigfunc()

CREATE TRIGGER trig2 INSTEAD OF UPDATE ON table1 FOR EACH ROW EXECUTE PROCEDURE
trigfunc('param')

CREATE TRIGGER trig3 AFTER INSERT ON table1 FOR EACH ROW
WHEN (OLD.c1 != NEW.c1)
EXECUTE PROCEDURE
trigfunc()

CREATE CONSTRAINT TRIGGER trig4 AFTER INSERT ON table1 DEFERRABLE INITIALLY
DEFERRED FOR EACH ROW EXECUTE PROCEDURE trigfunc()

CREATE TRIGGER trig5 AFTER INSERT ON table2
REFERENCING OLD TABLE as t1 NEW TABLE as t2
FOR EACH STATEMENT EXECUTE PROCEDURE trigfunc()

CREATE CONSTRAINT TRIGGER monitor_account_status
AFTER UPDATE ON accounts
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
WHEN ((((new.status_id = ANY (ARRAY[4, 5, 6])) <> (old.status_id = ANY (ARRAY[4, 5, 6])))
       OR (new.status_id = 7)))
EXECUTE PROCEDURE log_account_status_change()
