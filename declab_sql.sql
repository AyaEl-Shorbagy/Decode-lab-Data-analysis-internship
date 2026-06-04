select * from `dataset for data analyticss` ;

select ï»¿OrderID ,count(*) as dup_order 
from `dataset for data analyticss`
group by ï»¿OrderID
having dup_order > 1;

SELECT *
FROM `dataset for data analyticss`
WHERE OrderStatus = 'Shipped';

SELECT *
FROM `dataset for data analyticss`
WHERE Quantity > 3;

SELECT round(sum(Quantity * UnitPrice),2) AS Totalsales_Shipped
FROM `dataset for data analyticss`
WHERE OrderStatus = 'Shipped';  -- sales for shipped orders

SELECT *
FROM `dataset for data analyticss`
WHERE PaymentMethod = 'Credit Card';

SELECT *
FROM `dataset for data analyticss`
ORDER BY Date DESC;

SELECT Product,
       sum(Quantity) AS TotalQuantity,
       sum(Quantity * UnitPrice) AS Totalsales
from `dataset for data analyticss`
GROUP BY Product;       -- total sales for each product

SELECT OrderStatus,
       round(sum(Quantity * UnitPrice),3) AS Totalsaless
FROM `dataset for data analyticss`
GROUP BY OrderStatus;


SELECT PaymentMethod,
count(*) AS OrdersCount
FROM `dataset for data analyticss`
GROUP BY PaymentMethod;   -- orders counnt by each method

SELECT OrderStatus,
count(*) AS TotalOrders
FROM `dataset for data analyticss`
GROUP BY OrderStatus;

SELECT ReferralSource,
       COUNT(*) AS TotalOrders
FROM `dataset for data analyticss`
GROUP BY ReferralSource
ORDER BY TotalOrders DESC; -- the most effective refferal source is instagram



