create database sqlpro;
 use sqlpro
select * from pelican;

---which gender gives you maximum sales

select Gender, SUM(sales) as 'Total sales' from pelican
group by Gender

--which age	group, gender gives the maximum sales

select Age,GENDER, Sales from pelican
order by CAST(sales as float) desc 



SELECT Age, Gender, Sales
FROM pelican
ORDER BY CAST(Sales as float) DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

select Gender, sum(Sales) from pelican
group by Gender
order by count(Gender) desc;

-- what is the discount given to females

select max(discount) as 'Highest Discount' from pelican;

select * from pelican 
where Gender= 'Female' 
order by cast(discount as float) desc



--What is the average discount given to females in the store? 

SELECT AVG(Discount) AS 'Avg Discount', Gender
FROM pelican
WHERE Gender = 'Female'
GROUP BY Gender;





select [Method of Payment], sum(sales) as 'Total Sales' from pelican
group by [Method of Payment]
order by count([Method of Payment]) desc;


select * from baseball

--Who are the Top 5 players having height more than average?

select avg(height) as 'Avg Height' from baseball

select top 5 name, height from baseball
where height > (select avg(height) as 'Avg Height' from baseball) 
order by height desc;
---Botton 2 players having least weight and must be left handed? 

select top 2 * from baseball where handedness= 'L'
order by weight


select * from imbd
---- top 5 directors having rating more then average?



-----Which age group and gender gives the maximum sales?

SELECT Age, Gender, Sales
FROM pelican
ORDER BY CAST(Sales as float) DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;


SELECT top 5  Age, Gender, Sales
FROM pelican
ORDER BY CAST(Sales as float) DESC
