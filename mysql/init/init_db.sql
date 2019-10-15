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
    fatGoal DECIMAL(7, 2),
    carbGoal DECIMAL(7, 2),
    proteinGoal DECIMAL(7, 2),
    fat DECIMAL(7, 2),
    carb DECIMAL(7, 2),
    protein DECIMAL(7, 2),
    userId INT
);

CREATE TABLE ownFood (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NDB_NO INT,
    Long_Desc VARCHAR(255),
    Shrt_Desc VARCHAR(255),
    ManufacName VARCHAR(255),
    SciName VARCHAR(255),
    FdGrp_Desc VARCHAR(255),
    ComName VARCHAR(255),
    N_Factor INT,
    CHO_Factor INT,
    Fat_Factor INT,
    Pro_Factor INT,
    fat DECIMAL(7, 2),
    carb DECIMAL(7, 2),
    protein DECIMAL(7, 2),
    userId INT,
    day_id INT,
    weight INT,
    meal VARCHAR(255)
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

CREATE TABLE Folders (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    userId INT,
    name VARCHAR(255);
);

CREATE TABLE Summaries (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    userId INT,
    folderId INT,
    topic VARCHAR(255),
    content LONGTEXT
);

CREATE TABLE repeatitionsDone (
    id INT NOT NULL,
    repeatition INT
);

CREATE TABLE weightsUsed (
    id INT NOT NULL,
    weightUsed INT
);