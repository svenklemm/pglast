GRANT SELECT ON ALL TABLES IN SCHEMA public TO role1, role2

GRANT EXECUTE ON FUNCTION func1() TO role1

GRANT SELECT, INSERT ON TABLE t1 TO role1

GRANT role1 TO role2

GRANT role1 TO role2 WITH ADMIN OPTION

GRANT USAGE ON TYPE foo TO CURRENT_USER

GRANT CREATE ON TABLESPACE foo TO SESSION_USER
