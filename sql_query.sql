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


-- Exporting the dataset


