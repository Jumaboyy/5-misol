select * from brands;
select * from models;
select * from orders; 
 select customers.first_name ||' '||  customers.last_name AS Buyurtmachilar_ful_name, employees.first_name ||' '|| employees.last_name AS full_name, order_date, model_name from orders
 JOIN  customers USING(customer_id)
 JOIN employees USING(employee_id)
 JOIN models USING(model_id)
 order by customers.first_name;
