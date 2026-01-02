-- LeetCode 197: Rising Temperature (short)
-- Return the id of each day where temperature is higher than the previous day.
-- Example expected output: ids for dates where temperature > yesterday's temperature.

-- Solution (MySQL): join the table to itself on previous day and compare temperatures
SELECT w1.id
FROM Weather AS w1
JOIN Weather AS w2
  ON DATE_SUB(w1.recordDate, INTERVAL 1 DAY) = w2.recordDate
WHERE w1.temperature > w2.temperature;
