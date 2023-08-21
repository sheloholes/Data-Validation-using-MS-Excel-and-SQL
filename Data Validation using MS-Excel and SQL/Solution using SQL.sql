 
-- Solution 1

-- To Find missing id's in data2 we need to use left join on data1 and remove the null values from the data2
 
-- select concat(d1.`Order ID` ,"+",d1.`Product ID`) as "ID's Missing in data2" from data1 d1 
-- left join data2 d2 
-- on concat(d2.`Order ID` ,"+",d2.`Product ID`)=concat(d1.`Order ID` ,"+",d1.`Product ID`) 
-- where concat(d2.`Order ID` ,"+",d2.`Product ID`) is null;


-- Solution 2

-- To Find missing id's in data1 we need to use right join on data1 and remove the null values from the data1
-- select concat(d2.`Order ID` ,"+",d2.`Product ID`) as "ID's Missing in data1" from data1 d1 
-- right join data2 d2 
-- on concat(d2.`Order ID` ,"+",d2.`Product ID`)=concat(d1.`Order ID` ,"+",d1.`Product ID`) 
-- where concat(d1.`Order ID` ,"+",d1.`Product ID`) is null;


-- Solution 3

-- Same as solution2 but need to use aggregate function to sum the `Qty` 

-- select SUM(d2.Qty) from data1 d1 
-- right join data2 d2 
-- on concat(d2.`Order ID` ,"+",d2.`Product ID`)=concat(d1.`Order ID` ,"+",d1.`Product ID`) 
-- where concat(d1.`Order ID` ,"+",d1.`Product ID`) is null;


-- Solution 4 

-- Simple solution will be to union all the data from data1 and data2 and remove the duplicate values by using distinct

-- select count(distinct order_product_id) from (
-- select concat(d1.`Order ID` ,"+",d1.`Product ID`) order_product_id from data1 d1 union
-- select concat(d2.`Order ID` ,"+",d2.`Product ID`) order_product_id from data2 d2) sol








