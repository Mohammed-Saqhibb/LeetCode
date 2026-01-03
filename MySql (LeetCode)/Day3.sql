--1661. Average Time of Process per Machine
# Write your MySQL query statement below
SELECT machine_id, ROUND(AVG(processing_time), 3) AS processing_time
FROM (
    SELECT machine_id, 
           MAX(CASE WHEN activity_type = 'end' THEN timestamp END) - 
           MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS processing_time
    FROM Activity 
    GROUP BY machine_id, process_id
) t
GROUP BY machine_id;

--577. Employee Bonus
# Write your MySQL query statement below
select name , b.bonus as bonus from 
Employee as e
left join bonus as b 
on e.empid=b.empid
where b.bonus<=1000 || b.bonus is null;