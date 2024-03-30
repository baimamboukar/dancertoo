-- Create Database
CREATE DATABASE IF NOT EXISTS TheWeeklyChallenge;
-- Use the Database
USE TheWeeklyChallenge;
-- Create Challenge Table
CREATE TABLE IF NOT EXISTS Challenge (
    ChallengeID INT PRIMARY KEY AUTO_INCREMENT,
    Week INT NOT NULL,
    Date DATE NOT NULL,
    PRIMARY KEY (Week, Date)
);
-- Create Task Table
CREATE TABLE IF NOT EXISTS Task (
    TaskID INT PRIMARY KEY AUTO_INCREMENT,
    ChallengeID INT,
    Name VARCHAR(255) NOT NULL,
    FOREIGN KEY (ChallengeID) REFERENCES Challenge(ChallengeID)
);
-- Create Champions Table
CREATE TABLE IF NOT EXISTS Champions (
    ChampionID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Image VARCHAR(255),
    Description VARCHAR(255),
    InterviewLink VARCHAR(255)
);
-- Create Guest Table
CREATE TABLE IF NOT EXISTS Guest (
    GuestID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Image VARCHAR(255),
    Designation VARCHAR(255),
    Description VARCHAR(255)
);
-- Create PerlReview Table
CREATE TABLE IF NOT EXISTS PerlReview (
    PerlReviewID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Url VARCHAR(255),
    Image VARCHAR(255)
);
-- Create RakuReview Table
CREATE TABLE IF NOT EXISTS RakuReview (
    RakuReviewID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Url VARCHAR(255),
    Image VARCHAR(255)
);
-- Create Recap Table
CREATE TABLE IF NOT EXISTS Recap (
    RecapID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Url VARCHAR(255),
    Image VARCHAR(255)
);