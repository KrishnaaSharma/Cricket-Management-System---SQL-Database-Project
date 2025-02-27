
-- 1.DESCRIBE DATA TYPE
DESC Players;

-- 2.Display all the data on the table--
SELECT * FROM  Players;

-- DROP TABLE -----------------
drop  table Players;
drop  table matches;
drop  table headcoach;
drop  table stadium;
drop  table teams;
drop  table umpire;
drop  table teamowner;

-- 3. Write a SQL query to print the first 3 characters of FIRST_NAME from Student table.

select substring(Name, 1,3) As Name from Players;


-- 4. Write a SQL query to find the position of alphabet ('a') int the first name column 'david miler' from Student table.

select instr(Name , 'a') as Name from players
where Name = 'David miller';


-- 5. Write a SQL query that fetches the unique values of MAJOR Subjects from Student table and print its length.

select distinct name, length(Name)  from players;


-- 6. Write a SQL query to print FIRST_NAME from the Student table after replacing 'a' with 'A'.

select replace(Name, 'a', 'A') Name from players;


-- 7. Write a SQL query to print the FIRST_NAME and LAST_NAME from Student table into single column COMPLETE_NAME.

select CONCAT(Name, ' ', Role) as Name from players;


-- 8. Write a SQL query to print all Student details from Student table order by FIRST_NAME Ascending and MAJOR Subject descending .

select * from players
order by Name, Role , 'desc';

-- 9. Write a SQL query to print details of the Students with the FIRST_NAME as 'Prem' and 'Shivansh' from Student table.

select Name from players
where Name IN ('Rohit sharma', 'David Miller');


-- 10. Write a SQL query to print details of the Students excluding FIRST_NAME as 'Prem' and 'Shivansh' from Student table.

select Name from players
where Name NOT IN ('Rohit Sharma', 'David Miller');

-- 11. Write a SQL query to print details of the Students whose FIRST_NAME ends with 'a'.

select Name from players;

-- 12. Write an SQL query to print details of the Students whose FIRST_NAME ends with ‘a’ and contains five alphabets.

select Name from players 
where name like '_____a%'; 

-- 13. Write an SQL query to fetch the count of Students having Major Subject ‘Computer Science’.

select Role,  count(role) from players
where role = 'batsman';

-- inner Join=====
select Teams.TeamName, HeadCoach.CoachName, TeamOwner.CompanyName FROM Teams 
INNER JOIN TeamOwner 
ON Teams.TeamOwnerID = teamOwner.TeamOwnerID
INNER JOIN HeadCoach
ON Teams.HeadCoachID = HeadCoach.HeadCoachID;

-- left JOIN====

SELECT MatchID MatchType, date, StadiumName, team1,team2, loser, Winner, Name as  Manofthemantch FROM Matches as m
right join Players as p
on m. Manofthemantch= p.PlayerID
where  Manofthemantch = 00001; 


-- RIGHT JIon===

SELECT CoachName, TeamName, OwnerCompany FROM HeadCoach as h
RIGHT join Teams as t
on h.HeadCoachID = t.HeadCoachID;

-- -- Subquery:
SELECT name, run, PlayerID
FROM players 
WHERE run = (SELECT Max(run) FROM players);

SELECT name, run 
FROM players 
WHERE run > (SELECT run FROM players WHERE PlayerID = 0001);


select team1 ,COUNT(*) as total_match
from Matches
group by team1
having count(*) >=2;

