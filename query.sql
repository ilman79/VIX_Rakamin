WITH Sales as(
select 
orders.Date as order_date,
productCategory.CategoryName as category_name,
products.ProdName as product_name, 
products.Price as product_price,
orders.Quantity as order_qty,
products.Price*orders.Quantity as total_sales, 
customers.CustomerEmail as cust_email, 
customers.CustomerCity as cust_city, 

from `bi-muamalat-2022.Orders.Orders` as orders
left join `bi-muamalat-2022.Customers.Customers` as customers on orders.CustomerID = customers.CustomerID
left join `bi-muamalat-2022.Products.Products` as products on orders.ProdNumber = products.ProdNumber
left join `bi-muamalat-2022.ProductCategory.ProductCategory` as productCategory on products.Category = productCategory.CategoryID
order by orders.Date asc
)

select * from Sales
