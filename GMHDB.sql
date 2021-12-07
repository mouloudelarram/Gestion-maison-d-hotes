CREATE DATABASE GMHDB;


USE GMHDB;
CREATE TABLE Admin (
    IdAdmin int PRIMARY key,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Username varchar(100),
    Email varchar(50) UNIQUE,
    Phone varchar(50) UNIQUE,
    CIN varchar(25) UNIQUE,
    Password varchar(100),
    HireDate date   
); 