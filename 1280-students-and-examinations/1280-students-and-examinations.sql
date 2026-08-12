# Write your MySQL query statement below
SELECT
    s.student_id,
    s.student_name,
    suj.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects suj
LEFT JOIN Examinations e
ON s.student_id = e.student_id
AND suj.subject_name = e.subject_name
GROUP BY
    s.student_id,
    s.student_name,
    suj.subject_name
ORDER BY
    s.student_id,
    suj.subject_name;