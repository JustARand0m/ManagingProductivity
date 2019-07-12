CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS productivity;
CREATE TABLE todos (
    id INT PRIMARY KEY,
    isChecked BIT,
    todoMsg VARCHAR(255)
);