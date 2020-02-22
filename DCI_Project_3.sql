-- Question 1

SELECT customer_id, num_purchases, total_money_spent 
FROM (
SELECT s.cust_id AS Customer_ID, 
COUNT(s.amount_sold) AS Num_Purchases, 
SUM(s.amount_sold) AS Total_Money_Spent 
FROM sh.sales s 
GROUP BY s.cust_id 
ORDER BY num_purchases DESC
)
WHERE rownum <= 10


SELECT c.cust_id, c.cust_first_name, c.cust_last_name, c.cust_marital_status, c.cust_gender FROM sh.customers c
WHERE (c.cust_id LIKE 4090 
OR c.cust_id LIKE 19010 
OR c.cust_id LIKE 25939 
OR c.cust_id LIKE 24560 
OR c.cust_id LIKE 6453 
OR c.cust_id LIKE 26634 
OR c.cust_id LIKE 19017 
OR c.cust_id LIKE 9830 
OR c.cust_id LIKE 32173 
OR c.cust_id LIKE 8090)

-- Question 2

SELECT sum(h.end_date - h.start_date) AS time_worked, d.country_id
FROM hr.job_history h
INNER JOIN hr.emp_details_view d ON h.employee_id = d.employee_id
GROUP BY d.country_id

SELECT count(h.employee_id), d.country_id
FROM hr.job_history h
INNER JOIN hr.emp_details_view d ON h.employee_id = d.employee_id
GROUP BY d.country_id
