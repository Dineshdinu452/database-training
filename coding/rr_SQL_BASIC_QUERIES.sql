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

