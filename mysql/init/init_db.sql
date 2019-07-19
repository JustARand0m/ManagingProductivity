CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS productivity;

CREATE TABLE todos (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    isDone INT,
    todoMsg VARCHAR(255),
    importance INT NOT NULL CHECK(importance BETWEEN 0 AND 3),
    endDate DATE,
    details VARCHAR(255),
    imgUrl VARCHAR(255)
);

CREATE TABLE trainingsPlanRows (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    phase INT,
    dayNr INT,
    muscle VARCHAR(255),
    excercise VARCHAR(255),
    amountOfSets INT,
    repeatitions INT,
    pauseInbetween INT,
    startingWeight INT
);

CREATE TABLE repeatitionsDone (
    id INT NOT NULL,
    repeatition INT
);

CREATE TABLE weightsUsed (
    id INT NOT NULL,
    weightUsed INT
);