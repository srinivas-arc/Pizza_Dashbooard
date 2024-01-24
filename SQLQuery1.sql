create database pizzadb;
use pizzadb;
select * from pizza_sales_excel_file;
select sum(total_price)"Total Price" from pizza_sales_excel_file;
select sum(total_price)/count(distinct order_id)"Average Order" from pizza_sales_excel_file;
select cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) from pizza_sales_excel_file;
select count(order_id) from pizza_sales_excel_file;
select * from pizza_sales_excel_file group by pizza_category;
select pizza_category,sum(total_price),sum(total_price)*100/(select sum(total_price) from pizza_sales_excel_file where month(order_date)=1) from pizza_sales_excel_file where month(order_date)=1 group by pizza_category;
