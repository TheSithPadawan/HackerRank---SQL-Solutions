/*
Enter your query here.
*/
SELECT H.hacker_id, H.name
FROM HACKERS H 
JOIN SUBMISSIONS S
    ON S.hacker_id = H.hacker_id
JOIN CHALLENGES C
    ON S.challenge_id = C.challenge_id
JOIN DIFFICULTY D
    ON C.difficulty_level = D.difficulty_level
WHERE S.score = D.score AND C.difficulty_level = D.difficulty_level
GROUP BY H.hacker_id, H.name 
    HAVING COUNT(H.hacker_id) > 1
ORDER BY COUNT(H.hacker_id) DESC, H.hacker_id ASC 

