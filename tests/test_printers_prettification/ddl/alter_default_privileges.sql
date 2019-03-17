ALTER DEFAULT PRIVILEGES FOR ROLE admin REVOKE EXECUTE ON FUNCTIONS FROM PUBLIC
=
ALTER DEFAULT PRIVILEGES
  FOR ROLE admin
  REVOKE execute ON FUNCTIONS FROM PUBLIC

ALTER DEFAULT PRIVILEGES FOR ROLE role1 REVOKE GRANT OPTION FOR ALL
ON SCHEMAS FROM PUBLIC CASCADE
=
ALTER DEFAULT PRIVILEGES
  FOR ROLE role1
  REVOKE GRANT OPTION FOR ALL PRIVILEGES ON SCHEMAS FROM PUBLIC
  CASCADE
