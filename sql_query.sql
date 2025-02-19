select * from customer;
select count(*) from customer;

-- Filter Relevant Data
alter table customer drop column `Membership Type`;
alter table customer drop column Gender;
alter table customer drop column Age;
alter table customer drop column City;
alter table customer drop column `Average Rating`;
alter table customer drop column `Satisfaction Level`;

-- Handling missing values
SELECT * 
FROM customer 
WHERE `Customer ID` IS NULL 
   OR Age IS NULL 
   OR `Total Spend` IS NULL 
   OR `Items Purchased` IS NULL 
   OR `Discount Applied` IS NULL 
   OR `Days Since Last Purchase` IS NULL;
   
-- No null values in the dataset

-- Customer Segmentation
SELECT `Customer ID`, `Total Spend`,  
    CASE  
        WHEN `Total Spend` > 1000 THEN 'High Spender'  
        WHEN `Total Spend` BETWEEN 500 AND 1000 THEN 'Medium Spender'  
        ELSE 'Low Spender'  
    END AS Spend_Category  

FROM customer;

SELECT `Customer ID`, `Days Since Last Purchase`,  
    CASE  
        WHEN `Days Since Last Purchase` < 15 THEN 'Frequent Buyer'  
        WHEN `Days Since Last Purchase` BETWEEN 15 AND 30 THEN 'Average Buyer'  
        ELSE 'Infrequent Buyer'  
    END AS Buyer_Type  
FROM customer;


-- Top 10 Highest-Spending Customers
SELECT `Customer ID`, `Total Spend`
FROM customer
ORDER BY `Total Spend` DESC
LIMIT 10;


-- Customers Who Haven’t Purchased in the Last 60 Days
SELECT `Customer ID`, `Days Since Last Purchase`
FROM customer
WHERE `Days Since Last Purchase` > 60;







