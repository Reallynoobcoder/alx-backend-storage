-- Script that creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student.
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    INSERT INTO average_scores (user_id, average_score)
    SELECT user_id, AVG(score) AS average_score
    FROM corrections
    WHERE user_id = user_id
    GROUP BY user_id;
    SELECT AVG(score) AS average_score
    FROM corrections
    WHERE user_id = user_id
    GROUP BY user_id;
END; $$
DELIMITER ;
