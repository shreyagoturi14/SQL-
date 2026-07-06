USE startersql;
 
 -- Disabling AutoCommit
 SET autocommit=0;
 
 -- ROLLBACK — Revert Changes to the Last Safe Point
 ROLLBACK;
 
 DELETE FROM users WHERE id=5;
 
 -- COMMIT — Save Changes to the Database
 COMMIT;
 SELECT * FROM users;
 
 