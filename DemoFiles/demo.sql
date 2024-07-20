-- create_database.sql
CREATE DATABASE demo_db;
USE demo_db;

CREATE TABLE greetings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(255) NOT NULL
);

INSERT INTO greetings (message) VALUES ('Hello, Philippines Magandang Buhay!');
