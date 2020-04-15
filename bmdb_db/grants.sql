-- create a user and grant privileges to that user
DROP USER IF EXISTS bmdb_db_user@localhost;
CREATE USER bmdb_db_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb_db.* TO bmdb_db_user@localhost;