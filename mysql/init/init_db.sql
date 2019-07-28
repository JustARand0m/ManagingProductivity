CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS productivity;

CREATE TABLE user (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE,
    emailVerified INT,
    username VARCHAR(255) UNIQUE,
    password VARCHAR(255)
);

CREATE TABLE dailyNutrient (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dayNr DATE,
    fat INT,
    carb INT,
    protein INT,
    userId INT
);

CREATE TABLE ownFood (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    foodName VARCHAR(255),
    description VARCHAR(255),
    ManufacName VARCHAR(255),
    fat DECIMAL(4, 2),
    carb DECIMAL(4, 2),
    protein DECIMAL(4, 2),
    userId INT
);

CREATE TABLE todos (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    isDone INT,
    todoMsg VARCHAR(255),
    importance INT NOT NULL CHECK(importance BETWEEN 0 AND 3),
    endDate DATE,
    details VARCHAR(255),
    imgUrl VARCHAR(255),
    userId INT
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