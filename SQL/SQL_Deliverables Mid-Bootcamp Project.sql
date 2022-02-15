# 1.Create a database called house_price_regression.
DROP DATABASE IF EXISTS house_price_regression;
CREATE DATABASE house_price_regression;
USE house_price_regression;

# 2.Create a table house_price_data with the same columns as given in the csv file. 
DROP TABLE IF EXISTS house_price_data;
CREATE TABLE house_price_data
(id VARCHAR (20),
date VARCHAR (20),
bedrooms INT,
bathrooms INT,
m2_living FLOAT,
m2_total FLOAT,
floors INT,
waterfront INT,
view INT, 
condition_rank INT,
grade INT,
m2_above FLOAT,
m2_basement FLOAT,
yr_built INT,
yr_renovated INT,
zipcode INT,
latitud FLOAT,
longtitud FLOAT,
m2_living15 FLOAT,
m2_total15 FLOAT,
price INT);

# 3.Import the data from the csv file into the table. 
#Answer: With table data import wizard

# 4.Select all the data from table house_price_data to check if the data was imported correctly
SELECT 
    *
FROM
    house_price_data;

# 5.Use the alter table command to drop the column date from the database,  
#Select all the data from the table to verify if the command worked. Limit your returned results to 10.
ALTER TABLE house_price_data
  DROP COLUMN date;
SELECT 
    *
FROM
    house_price_data
LIMIT 10;

# 6.Use sql query to find how many rows of data you have:
SELECT 
    COUNT(*) AS total_rows_data
FROM
    house_price_data;

# 7.1 What are the unique values in the column bedrooms?
SELECT DISTINCT
    (bedrooms) AS bedrooms_unique_value
FROM
    house_price_data;
    
# 7.2 What are the unique values in the column bathrooms?
SELECT DISTINCT
    (bathrooms) AS bathrooms_unique_value
FROM
    house_price_data;
    
# 7.3 What are the unique values in the column floors?
SELECT DISTINCT
    (floors) AS floors_unique_value
FROM
    house_price_data;
    
# 7.4 What are the unique values in the column condition?
SELECT DISTINCT
    (condition_rank) AS condition_unique_value
FROM
    house_price_data;
    
# 7.5 What are the unique values in the column grade?
SELECT DISTINCT
    (grade) AS grade_unique_value
FROM
    house_price_data;

#8.Arrange the data in a decreasing order by the price of the house. 
#Return only the IDs of the top 10 most expensive houses in your data.
SELECT 
    id, price
FROM
    house_price_data
ORDER BY price DESC
LIMIT 10;

# 9.What is the average price of all the properties in your data?
SELECT 
    CEILING(AVG(price)) AS the_avg_price
FROM
    house_price_data;

# 10.1 What is the average price of the houses grouped by bedrooms? 
SELECT 
    bedrooms AS no_of_bedrooms,
    CEILING(AVG(price)) AS the_avg_price
FROM
    house_price_data
GROUP BY bedrooms
ORDER BY bedrooms ASC;

# 10.2 What is the average sqft_living of the houses grouped by bedrooms? 
SELECT 
    bedrooms AS no_of_bedrooms,
    CEILING(AVG(m2_living)) AS living_area
FROM
    house_price_data
GROUP BY bedrooms
ORDER BY bedrooms ASC;

# 10.3 What is the average price of the houses with a waterfront and without a waterfront? 
SELECT 
    waterfront, 
    CEILING(AVG(price)) AS the_avg_price
FROM
    house_price_data
GROUP BY waterfront;

# 10.4 Is there any correlation between the columns condition and grade? 
#You can analyse this by grouping the data by one of the variables and then aggregating the results of the other column. 
#Visually check if there is a positive correlation or negative correlation or no correlation between the variables.
SELECT 
    @firstValue:=AVG(condition_rank) as avg_condition,
    @secondValue:=AVG(grade) as avg_grade,
    @division:=(STDDEV_SAMP(condition_rank) * STDDEV_SAMP(grade)) as stddev_both
FROM
    house_price_data;
SELECT 
    ROUND(SUM((condition_rank - @firstValue) * (grade - @secondValue)) / ((COUNT(condition_rank) - 1) * @division),3) as correlation_score
FROM
    house_price_data;
# The correlation is negative: -0,147.

# 11.Write a simple query to find what are the options available for them?
SELECT 
    bedrooms,
    bathrooms,
    floors,
    waterfront,
    condition_rank,
    grade,
    price
FROM
    house_price_data
WHERE
    bedrooms IN (3 , 4 ) AND bathrooms  >= 3
        AND floors = 1
        AND waterfront = 0
        AND condition_rank NOT IN (1 , 2)
        AND grade NOT IN (1 , 2, 3, 4)
        AND price < 300000;
        
# 12.The list of properties whose prices are twice more than the average of all the properties in the database. 
SELECT 
    *
FROM
    house_price_data
WHERE
    price > 2 * (SELECT 
            AVG(price)
        FROM
            house_price_data);

# 13.Create a view of the same query.
CREATE OR REPLACE VIEW properties_price_twice_avg AS
    SELECT 
        *
    FROM
        house_price_data
    WHERE
        price > 2 * (SELECT 
                AVG(price)
            FROM
                house_price_data);

# 14.What is the difference in average prices of the properties with three and four bedrooms?
SELECT 
    CEILING((SELECT 
                    AVG(price)
                FROM
                    house_price_data
                WHERE
                    bedrooms = 4) - (SELECT 
                    AVG(price)
                FROM
                    house_price_data
                WHERE
                    bedrooms = 3)) AS diff_avg_price;

# 15.What are the different locations where properties are available in your database? (distinct zip codes)
SELECT DISTINCT
    (zipcode) AS diff_location
FROM
    house_price_data;

# 16.Show the list of all the properties that were renovated.
#Regarding our observation, there are some porperties has the difference in m2_living15 compared to m2_living, but it is missing information in
#yr_renovated columns, so we decide to combine both scenario in our querry for a comprehensive result.
SELECT 
    *
FROM
    house_price_data
WHERE
    yr_renovated > 0
        OR (m2_living - m2_living15) != 0;

# 17.Provide the details of the property that is the 11th most expensive property in your database.
SELECT 
    *
FROM
    house_price_data
ORDER BY price DESC
LIMIT 10 , 1;
