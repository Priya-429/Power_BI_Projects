create database mobile_sales;
select * from mobile_analysis;
-- 1.CHECK MOBILE FEATURES AND PRICE LIST-- 
SELECT 
    phone_name, price
FROM
    mobile_analysis;
-- 2.FIND OUT THE PRICE OF 5 MOST EXPENSIVE PHONES-- 
SELECT 
    *
FROM
    mobile_analysis
ORDER BY price DESC
LIMIT 5;
-- 3. FIND OUT THE PRICE OF 5 MOST CHEAPEST PHONES.-- 
SELECT 
    *
FROM
    mobile_analysis
ORDER BY price ASC
LIMIT 5;
-- 4.LIST OF TOP 5 SAMSUNG PHONES WITH PRICE AND ALL FEATURES.-- 
SELECT 
    *
FROM
    mobile_analysis
WHERE
    brands = 'samsung'
ORDER BY price DESC
LIMIT 5;
-- 5.MUST HAVE ANDROID PHONE LIST THEN TOP 5 HIGH PRICE ANDROID PHONES.-- 
SELECT 
    *
FROM
    mobile_analysis
WHERE
    operating_system_type = 'android'
ORDER BY price DESC
LIMIT 5;
-- 6.MUST HAVE ANDROID PHONES LIST THEN TOP 5 LOWER PRICE ANDROID PHONES.-- 
SELECT 
    *
FROM
    mobile_analysis
WHERE
    operating_system_type = 'android'
ORDER BY price ASC
LIMIT 5;
-- 7.MUST HAVE IOS PHONES LIST THEN TOP 5 HIGHER PRICE IOS PHONES.-- 
SELECT 
    *
FROM
    mobile_analysis
WHERE
    operating_system_type = 'ios'
ORDER BY price DESC
LIMIT 5;
-- 8.MUST HAVE IOS PHONES LIST THEN TOP 5 LOWER PRICE IOS PHONES.-- 
SELECT 
    *
FROM
    mobile_analysis-
WHERE
    operating_system_type = 'ios'
ORDER BY price ASC
LIMIT 5;
-- 9.WRITE A QUERY WHICH PHONE SUPPORT 5G AND ALSO TOP 5 PHONE WITH 5G SUPPORT.--
SELECT 
    *
FROM
    mobile_analysis
WHERE
    5g_availability = 'yes'
ORDER BY price DESC
LIMIT 5;
 -- 10.TOTAL PRICE OF ALL MOBILE IS TO BE FOUND WITH BRAND NAME.-- 
SELECT 
    brands, SUM(price)
FROM
    mobile_analysis
GROUP BY brands;


