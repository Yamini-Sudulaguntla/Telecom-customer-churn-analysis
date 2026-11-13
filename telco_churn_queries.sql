create database telecom_churn_db;
use telecom_churn_db;
show databases;

select * from telco_customer_churn;
#Total Customers
select count(*) from telco_customer_churn;
select `Churn Label`,count(*) as customer_count from
telco_customer_churn group by `Churn Label`;
select * from telco_customer_churn limit 5;
select count(*) as Churn_Customers from telco_customer_churn where `Churn Label`='Yes';
###CHURN RATE
select round(sum(case when `Churn Label`='Yes' then 1 else 0 end)*100/count(*),2)
 as Churn_Rate from telco_customer_churn;
 
 ### Contract wise Churn Rate
 select Contract,round(sum(case when `Churn Label`='yes' then 1 else 0 end)*100/count(*),2) as ChurnRAte from telco_customer_churn 
 group by Contract;
 
 
 
 
 
 
 
 
 select City,count(*) Churn_Customers ,Gender from telco_customer_churn where `Churn Label`='yes' group by City,Gender;
 select Contract ,count(*) as Customers from telco_customer_churn group by Contract;
 select Contract,count(*) as Customers from telco_customer_churn where `Churn Label`='yes' group by Contract;
 #Payment Method Analysis
 select `Payment Method` ,count(*) as Customers from telco_customer_churn where `Churn Label`='yes'
 group by `Payment Method` order by Customers desc;
 #Gender Analysis
 select gender,count(*) as Customers from telco_customer_churn where `Churn Label`='yes' group by gender;
 #Senior Citizen Analysis
 
 SELECT `Senior Citizen`,
COUNT(*) AS Churn_Customers
FROM telco_customer_churn
WHERE `Churn Label`='Yes'
GROUP BY `Senior Citizen`;


#Internet Service Analysis
select `Internet Service` ,count(*) as Churn_customers from telco_customer_churn 
where `Churn Label`='yes' group by `Internet Service`
#Tenure Analysis
select avg(`Tenure Months`) as avg_tenure from telco_customer_churn where `Churn Label`='yes

SELECT
Round(SUM(`Monthly Charges`),2) AS Revenue_From_Churned
FROM telco_customer_churn
WHERE `Churn Label`='Yes';
#Churn Reason Analysis
SELECT `Churn Reason`,
COUNT(*) AS Customer_Count
FROM telco_customer_churn
WHERE `Churn Label`='Yes'
GROUP BY `Churn Reason`
ORDER BY Customer_Count DESC;
