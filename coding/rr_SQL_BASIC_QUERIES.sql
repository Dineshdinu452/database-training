create schema source_data

CREATE TABLE source_data.DAILY_PRICING (
ProductGroupName varchar(100),
ProductName varchar(100),
StateName varchar(100),
Market_Center varchar(100),
Arrivals_in_tonnes Decimal(16,2),
Unit_of_Arrivals char(6),
Origin varchar(100),
Variety varchar(100),
Minimum_Prices_in_Rs_quintals Decimal(16,2),
Maximum_Prices_in_Rs_quintals Decimal(16,2),
Modal_Prices_in_Rs_quintals Decimal(16,2),
Unit_of_Price char(10)
)

Alter Table source_data.DAILY_PRICING add price_date date

INSERT INTO source_data.DAILY_PRICING values (
'Vegetables',
'Leafy Vegetable',
'Gujarat',
'Padra',
3,
'Tonnes',
'NR',
'Leafy Vegetables',
1000,
1250,
1100,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING

INSERT INTO 
source_data.DAILY_PRICING
(
ProductGroupName,
ProductName,
StateName,
Market_Center,
price_date
)
values (
'Vegetables',
'Leafy Vegetable',
'Andhra Pradesh',
'Pattikonda',
'01/01/2019'
)

UPDATE 
source_data.DAILY_PRICING
SET 
Arrivals_in_tonnes=1,
Unit_of_Arrivals='Tonnes',
Origin ='NR',
Variety ='Local',
Minimum_Prices_in_Rs_quintals=1300,
Maximum_Prices_in_Rs_quintals=1600,
Modal_Prices_in_Rs_quintals=1500,
Unit_of_Price='Rs/Quintal'
where 
StateName='Andhra Pradesh'

delete *
from
source_data.DAILY_PRICING
WHERE StateName='Andhra Pradesh'

SELECT * FROM source_data.DAILY_PRICING

DROP TABLE source_data.DAILY_PRICING

SELECT UPPER(ProductGroupName) as ProductGroupName_UPPER
,Lower(ProductName) as ProductName_LOWER FROM source_data.DAILY_PRICING
WHERE StateName='Andhra Pradesh'

SELECT ProductGroupName,count(*)
FROM source_data.DAILY_PRICING
GROUP BY ProductGroupName
HAVING COUNT(*) > 1