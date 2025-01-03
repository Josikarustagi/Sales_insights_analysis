# Sales_insights_analysis
data analysis by using Power BI and MySQL of AtliQ hardware company

# Data Analysis Using SQL
1. Show all customer records

SELECT *
FROM customers;

2. Show total number of customers

SELECT count(*) 
FROM customers;

3. Show transactions for Chennai market (market code for chennai is Mark001)

SELECT * 
FROM transactions 
where market_code='Mark001';

4. Show distrinct product codes that were sold in chennai

SELECT distinct product_code 
FROM transactions 
where market_code='Mark001';

5. Show transactions where currency is US dollars

SELECT * 
from transactions 
where currency="USD";

6. Show transactions in 2020 join by date table

SELECT * 
FROM transactions as t 
INNER JOIN date as d 
ON t.order_date=d.date
where d.year=2020;

7. Show total revenue in year 2020

SELECT SUM(t.sales_amount) 
FROM transactions as t 
INNER JOIN date as d  
ON t.order_date=d.date 
where d.year=2020 and t.currency="INR\r" or t.currency="USD\r";

8. Show total revenue in year 2020, January Month

SELECT SUM(t.sales_amount) 
FROM transactions as t 
INNER JOIN d as d
ON t.order_date=d.date 
where d.year=2020 and d.month_name="January" and (t.currency="INR\r" or t.currency="USD\r");

9. Show total revenue in year 2020 in Chennai

SELECT SUM(t.sales_amount) 
FROM transactions as t 
INNER JOIN date as d 
ON t.order_date=d.date 
where d.year=2020 and t.market_code="Mark001";

 # Data Analysis Using Power BI
1. Formula to create norm_amount column
= Table.AddColumn(#"Filtered Rows", "norm_amount", each if [currency] = "USD" or [currency] ="USD#(cr)" then [sales_amount]*75 else [sales_amount], type any)
