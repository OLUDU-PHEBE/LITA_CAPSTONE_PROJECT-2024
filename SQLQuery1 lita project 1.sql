create database LITA_CAPSTONE_PROJECT_1
SELECT * FROM [dbo].[SalesData$]

..... to create sales column
alter table [dbo].[SalesData$]
add sales int

..... to derive the sales data.....

update[dbo].[SalesData$]
set sales = quantity * UnitPrice

........CHANGING OF COLUMN HEADINGS.....

SELECT Product AS
PRODUCT_PROJECT_1,
UnitPrice AS
UNIT_PRICE
FROM [dbo].[SalesData$]

.... to remove unwanted columns .....
alter table [dbo].[SalesData$]
drop column F8; 

alter table [dbo].[SalesData$]
drop column F9; 

alter table [dbo].[SalesData$]
drop column F10; 

alter table [dbo].[SalesData$]
drop column F11;

alter table [dbo].[SalesData$]
drop column F12;

alter table [dbo].[SalesData$]
drop column F13;

alter table [dbo].[SalesData$]
drop column F14;

alter table [dbo].[SalesData$]
drop column F15;

alter table [dbo].[SalesData$]
drop column F16; 

SELECT * FROM [dbo].[SalesData$]

...... total sales for each product category
.......... using where clause......

select PRODUCT,
SUM(sales) AS TOTAL_SALES
FROM [dbo].[SalesData$]
WHERE PRODUCT IN ('Shoes','Socks''Gloves', 'Shirt', 'Jacket', 'Hat')
group by PRODUCT

select * from [dbo].[SalesData$]

...... finding the total number of sales transactions in each region....

select Region, COUNT(sales) as
total_sales_transactions
from [dbo].[SalesData$]
where Region in ('North', 'South', 'West', 'East')
group by Region


...... TO FIND THE TOTAL SALES FOR EACH REGION......

SELECT Region, sum(sales) as
totalsales
from [dbo].[SalesData$]
where Region in ('North', 'South', 'West', 'East')
group by Region

........to find the highest-selling product by total sales value......

select product,
sum(sales) as total_sales
from [dbo].[SalesData$]
where product in ('Shoes','Socks''Gloves', 'Shirt', 'Jacket', 'Hat')
group by product
order by total_sales desc

.......calculate total revenue per product.......

select product,
sum(sales) as total_sales
from [dbo].[SalesData$]
where product in ('Shoes','Socks''Gloves', 'Shirt', 'Jacket', 'Hat')
group by product

select * from [dbo].[SalesData$]

.......calculate monthly sales totals for the current year......



select * from[dbo].[SalesData$]

.......find the top 5 customers by total purchase amount.......

select Customer Id,
sum(sales) as
total_purchase_amount
from [dbo].[SalesData$]
group by CustomerId
ORDER by sales desc 
LIMIT 5)

select*from [dbo].[SalesData$]
.......calculate the percentage of total sales contributed by each region......
SELECT 
    Region,
    SUM(sales) / (SELECT SUM(sales) FROM [dbo].[SalesData$] ) * 100 AS percentage_of_total_sales
FROM 
    sales
WHERE 
    Region IN ('North', 'South', 'East', 'West')
GROUP BY 
    Region;

..................identify products with no sales in the last quarter............
  
