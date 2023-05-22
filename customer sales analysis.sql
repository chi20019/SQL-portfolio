--Inspecting data--
SELECT * from [dbo].[sales_data_sample]

--Checking unique values--
SELECT DISTINCT STATUS FROM [dbo].[sales_data_sample]
SELECT DISTINCT year_id FROM [dbo].[sales_data_sample]
SELECT DISTINCT PRODUCTLINE FROM [dbo].[sales_data_sample]
SELECT DISTINCT COUNTRY FROM [dbo].[sales_data_sample]
SELECT DISTINCT DEALSIZE FROM [dbo].[sales_data_sample]
SELECT DISTINCT TERRITORY FROM [dbo].[sales_data_sample]

select distinct MONTH_ID from [dbo].[sales_data_sample]
where year_id = 2003;


--ANALYSIS
----Let's start by grouping sales by productline, year id, and dealsize----
SELECT PRODUCTLINE, sum(sales) Revenue
FROM [dbo].[sales_data_sample]
GROUP BY PRODUCTLINE
ORDER BY 2 DESC;


SELECT YEAR_ID, sum(sales) Revenue
FROM [dbo].[sales_data_sample]
GROUP BY YEAR_ID
ORDER BY 2 DESC;


SELECT  DEALSIZE,  sum(sales) Revenue
FROM [customer sales analysis].[dbo].[sales_data_sample]
GROUP BY  DEALSIZE
ORDER BY 2 desc;


----What was the best month for sales in a specific year? How much was earned that month? 
SELECT  MONTH_ID, sum(sales) Revenue, count(ORDERNUMBER) Frequency
FROM [customer sales analysis].[dbo].[sales_data_sample]
WHERE YEAR_ID = 2004 --change year to see the rest
GROUP BY  MONTH_ID
ORDER BY 2 desc;


--November seems to be the month, what product do they sell in November, Classic I believe
SELECT  MONTH_ID, PRODUCTLINE, sum(sales) Revenue, count(ORDERNUMBER)
FROM [customer sales analysis].[dbo].[sales_data_sample]
WHERE YEAR_ID = 2004 AND MONTH_ID = 11 --change year to see the rest
GROUP BY  MONTH_ID, PRODUCTLINE
ORDER BY 3 desc;


--What city has the highest number of sales in a specific country
select city, sum (sales) Revenue
from [customer sales analysis].[dbo].[sales_data_sample]
where country = 'UK'
group by city
order by 2 desc;


---What is the best product in United States?
select country, YEAR_ID, PRODUCTLINE, sum(sales) Revenue
from [customer sales analysis].[dbo].[sales_data_sample]
where country = 'USA'
group by  country, YEAR_ID, PRODUCTLINE
order by 4 desc;

--List all the product sold in USA and include how many of eachh were sold--
SELECT PRODUCTLINE, SUM (Quantityordered)
FROM [dbo].[sales_data_sample]
WHERE COUNTRY LIKE  'USA'
GROUP BY PRODUCTLINE;

--Which locations in Sweden received at least 4 orders and how many orders did they each receive?--
SELECT DISTINCT COUNTRY, COUNT(ORDERNUMBER)
FROM [dbo].[sales_data_sample]
WHERE COUNTRY LIKE 'SWEDEN'
GROUP BY COUNTRY
HAVING COUNT(ORDERNUMBER)>4;

--Which productline brought in the most revenue and what is their revenue in total?--
SELECT PRODUCTLINE, SUM(QUANTITYORDERED*PRICEEACH) AS Revenue
FROM [dbo].[sales_data_sample]
GROUP BY PRODUCTLINE
ORDER BY SUM(QUANTITYORDERED*PRICEEACH) DESC;


--How many trains were sold and the total?--
SELECT PRODUCTLINE, SUM(QUANTITYORDERED) AS Quantity
from [dbo].[sales_data_sample]
WHERE PRODUCTLINE LIKE 'Trains'
GROUP BY PRODUCTLINE;
