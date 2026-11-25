SELECT
COUNT(*) AS total_employees,
SUM(Attrition = 'Yes') AS employees_left,
SUM(Attrition = 'No') AS employees_stayed,
ROUND(
SUM(Attrition = 'Yes') * 100.0 / COUNT(*),
2
) AS attrition_rate,
ROUND(
AVG(MonthlyIncome),
2
) AS average_monthly_salary,
ROUND(
AVG(YearsAtCompany),
2
) AS average_years_at_company
FROM employees;