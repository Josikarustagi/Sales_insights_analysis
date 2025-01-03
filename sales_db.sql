SELECT * FROM sales.customers;

SELECT count(*) FROM sales.customers;

SELECT * FROM sales.date;

SELECT * FROM sales.markets;

SELECT * FROM sales.transactions;

SELECT count(*) FROM transactions;

SELECT * FROM transactions 
LIMIT 5;

SELECT  * FROM transactions 
WHERE market_code = 'Mark001';

 SELECT  * FROM transactions 
WHERE currency = 'USD'; 


SELECT SUM(t.sales_amount)
FROM transactions t
INNER JOIN date d
ON d.date = t.order_date
WHERE d.year = 2020 and t.market_code = "Mark001";


SELECT *
FROM transactions t
INNER JOIN date d
ON d.date = t.order_date
WHERE d.year = 2020 and t.market_code = "Mark001";

SELECT distinct product_code 
FROM sales.transactions 
where market_code = 'Mark001';


SELECT sum(t.sales_amount)FROM transactions as t INNER JOIN date as d
ON t.order_date=d.date where d.year=2020 and t.currency="INR\r" or t.currency="USD\r";




