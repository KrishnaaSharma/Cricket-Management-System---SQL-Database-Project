-- Create database ----

CREATE DATABASE ipl;

use ipl;

-- 1. PLAYERS --------------------
CREATE TABLE Players(
	PlayerID INT PRIMARY KEY,
	Name VARCHAR(50) NOT NULL, 
	Nationality  VARCHAR(50) NOT NULL,
	DoB DATE NOT NULL,
	Role  VARCHAR(50),
    Run Int,
	StrikeRate DECIMAL(5,2),
	BowlingStyle  VARCHAR(50),
	BattingStyle  VARCHAR(50)
);

-- 2.TEAMS----------------------------------
CREATE TABLE Teams(
	TeamID INT PRIMARY KEY,
	TeamName VARCHAR(50) UNIQUE NOT NULL,
	OwnerCompany VARCHAR(50) NOT NULL,
    HeadCoachID INT,
    TeamOwnerID INT,
    FOREIGN KEY (HeadCoachID) REFERENCES HeadCoach (HeadCoachID),
     FOREIGN KEY (TeamOwnerID) REFERENCES TeamOwner (TeamOwnerID)
);


-- 3.MATCHES=================
CREATE TABLE Matches(
	MatchID INT PRIMARY KEY,
	MatchType VARCHAR(10) NOT NULL,
	Date_Mactch DATE NOT NULL,
	StadiumName VARCHAR(50) NOT NULL,
	team1 VARCHAR(30),
    team2 VARCHAR(30),
    Loser varchar(30),
    Winner VARCHAR(30),
    UmpireID INT,
    Manofthemantch INT,
    FOREIGN KEY (StadiumName) references Stadium(StadiumName),
    FOREIGN KEY (UmpireID) references Umpire (UmpireID),
    FOREIGN KEY(Manofthemantch) references Players (PlayerID)
);


-- 4.UMPIRE ======================
CREATE TABLE Umpire(
	UmpireID INT PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	YearsOfExperience SMALLINT,
	Country VARCHAR(50) NOT NULL	
);


-- 5.HEADCOACH=============
CREATE TABLE HeadCoach(
	HeadCoachID INT PRIMARY KEY,
	CoachName VARCHAR(50) NOT NULL,
	Years_of_Experience INT,
	DoB DATE NOT NULL,
	Country VARCHAR(50) NOT NULL
);


-- 6.STADIUM=======================
CREATE TABLE Stadium(
	StadiumName VARCHAR(50) PRIMARY KEY 
    
);


-- 7.TEAM OWNER=========
CREATE TABLE TeamOwner(
	TeamOwnerID INT PRIMARY KEY,
	CompanyName VARCHAR(50),
	BusinessDomain VARCHAR(50) NOT NULL,
	Country VARCHAR(50) NOT NULL	
);


