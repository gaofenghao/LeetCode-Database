--177	
--Nth Highest Salary    		24.7%	Medium	

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N=N-1;
    RETURN (
        SELECT DISTINCT Salary
        FROM Employee
        ORDER BY Salary DESC
        LIMIT N, 1
    );
END

--178	***
--Rank Scores    		34.5%	Medium	


--180	
--Consecutive Numbers    		31.9%	Medium

SELECT DISTINCT l1.Num AS ConsecutiveNums
FROM Logs l1
LEFT JOIN Logs l2 ON l1.Id = l2.Id-1
LEFT JOIN Logs l3 ON l1.Id = l3.Id-2
WHERE l1.Num = l2.Num AND l1.Num = l3.Num;

--184	
--Department Highest Salary    		26.8%	Medium	

SELECT Department.Name AS Department, Employee.Name AS Employee, Salary
FROM Employee
JOIN Department ON Employee.DepartmentId = Department.Id
WHERE (Salary, DepartmentId) IN
(SELECT MAX(Salary) AS Salary, DepartmentId
FROM Employee
GROUP BY DepartmentId)
ORDER BY Salary ASC;

--570	
--Managers with at Least 5 Direct Reports    		61.3%	Medium	



--574	
--Winning Candidate    		35.7%	Medium	



--578	
--Get Highest Answer Rate Question    		35.3%	Medium	



--580	
--Count Student Number in Departments    		41.7%	Medium	



--585	
--Investments in 2016    		46.5%	Medium	



--602	
--Friend Requests II: Who Has the Most Friends    		43.6%	Medium	



--608	
--Tree Node    		57.5%	Medium	



--612	
--Shortest Distance in a Plane    		52.8%	Medium	



--614	
--Second Degree Follower    		22.9%	Medium	



--626	
--Exchange Seats    		52.7%	Medium

SELECT if((SELECT COUNT(id) FROM seat) MOD 2 = 0, 
          if(id MOD 2 = 0, id -1, id + 1), 
          if(id = (SELECT COUNT(id) FROM seat), id, if(id MOD 2 = 0, id -1, id + 1))) AS id, student
FROM seat
ORDER BY id ASC;