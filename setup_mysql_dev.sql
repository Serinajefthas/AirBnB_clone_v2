-- prepares a mysql server for project
-- all privilges on db hbnb_dev_db
-- SELECT privileges on db performance_schema
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
GRANT USAGE ON *.* TO 'hbnb_dev'@'localhost';
GRANT ALL PRIVILEGES ON 'hbnb_dev_db'.* TO 'hbnb_dev'@'localhost';
GRANT SELECT ON 'performance_schema'.* TO 'hbnb_dev'@'localhost';
