INSERT INTO mysql.`user`(HOST,USER,PASSWORD)
VALUES("localhost","test",PASSWORD("1234"));
GRANT SELECT ON tms_db.* TO test@localhost IDENTIFIED BY '1234';
FLUSH PRIVILEGES;
EXIT;
