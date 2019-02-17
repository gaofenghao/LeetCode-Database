# 570

SELECT Name
FROM Employee e1
LEFT JOIN Employee e2
ON e1.Id = e2.ManagerId
GROUP BY e1.Name 
HAVING COUNT(e2.Name)>=5;

# 574
SELECT Name
FROM Candidate
WHERE id =
(
SELECT CandidateId
FROM Vote
GROUP BY CandidateId
ORDER BY COUNT(CandidateId) DESC
LIMIT 1)


# 578

SELECT action, 
FROM survey_log
