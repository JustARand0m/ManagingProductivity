GRANT ALL ON *.* TO root@'%';

CREATE DATABASE IF NOT EXISTS productivity;
CREATE TABLE todos (
    id INT PRIMARY KEY,
    isChecked BIT,
    todoMsg VARCHAR(255)
);