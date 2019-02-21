-- 175	
-- Combine Two Tables    		48.8%	Easy
-- Test on left join, keep all from person table, even there's nothing match from address table

SELECT FirstName, LastName, City, State
FROM Person
LEFT JOIN Address
ON Person.PersonId = Address.PersonId;

-- 176	
-- Second Highest Salary    		25.9%	Easy	
-- return specific nth record

SELECT IFNULL((SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC
LIMIT 1, 1), NULL) AS SecondHighestSalary;

-- or 

SELECT (SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC
LIMIT 1, 1) AS SecondHighestSalary;

-- 181	
-- Employees Earning More Than Their Managers    		44.6%	Easy	
-- join and comparison

SELECT e1.Name AS Employee
FROM Employee e1
JOIN Employee e2 ON e1.ManagerId=e2.Id
WHERE e1.Salary > e2.Salary;

-- 182	
-- Duplicate Emails    		52.0%	Easy
-- find duplicates

SELECT DISTINCT Email
FROM Person p1
JOIN Person p2 ON p1.Email=p2.Email
WHERE p1.Id > p2.Id;

-- or

SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(EMail)>1;
	
-- 183	
-- Customers Who Never Order    		42.4%	Easy	

SELECT Name AS Customers
FROM Customers
LEFT JOIN Orders ON Customers.Id=Orders.CustomerId
WHERE orders.Id IS NULL;

-- 196	
-- Delete Duplicate Emails    		30.3%	Easy	
-- delete syntax

DELETE FROM Person p1, Person p2
WHERE p1.Email = p2.Email AND p1.Id > p2.Id;

-- 197	
-- Rising Temperature    		33.4%	Easy	

-- wrong answer
SELECT w1.Id
FROM Weather w1
JOIN Weather w2 ON w1.Id= (w2.Id+1)
WHERE w1.Temperature > w2.Temperature; 
-- correct answer
SELECT w1.Id
FROM Weather w1
LEFT JOIN Weather w2
ON DATEDIFF(w1.RecordDate, w2.RecordDate) = 1
WHERE w1.Temperature > w2.Temperature;

-- 577	
-- Employee Bonus    		56.8%	Easy	



-- 584	
-- Find Customer Referee    		66.3%	Easy	
-- 586	
-- Customer Placing the Largest Number of Orders    		64.9%	Easy	
-- 595	
-- Big Countries    		73.0%	Easy	
-- 596	
-- Classes More Than 5 Students    		34.6%	Easy	
-- 597	
-- Friend Requests I: Overall Acceptance Rate    		39.3%	Easy	
-- 603	
-- Consecutive Available Seats    		57.1%	Easy	
-- 607	
-- Sales Person    		54.5%	Easy	
-- 610	
-- Triangle Judgement    		60.8%	Easy	
-- 613	
-- Shortest Distance in a Line    		72.1%	Easy	
-- 619	
-- Biggest Single Number    		38.1%	Easy	
-- 620	
-- Not Boring Movies    		61.1%	Easy	
-- 627	
-- Swap Salary    		69.0%	Easy