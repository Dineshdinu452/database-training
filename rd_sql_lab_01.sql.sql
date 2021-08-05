CREATE SCHEMA fruits_data

CREATE TABLE storage_data.fruits_data
(Market_center varchar(100),variety varchar(100),unit_of_arrivals varchar(100),Arrivals_in_tonnes Decimal(16,2),
Minimum_price Decimal (16,2) ,Maximum_prices Decimal (16,2) ,Modal_Prices Decimal (16,2) , units_of_price char (10))

select * from storage_data.fruits_data

drop table storage_data.fruits_data

CREATE TABLE storage_data.fruits_data
(Market_center varchar(100),
variety varchar(100),
unit_of_arrivals varchar(100),
Arrivals_in_tonnes Decimal(16,2),
Minimum_price Decimal (16,2)
,Maximum_prices Decimal (16,2)
,Modal_Prices Decimal (16,2),
units_of_price char (10))


Alter Table storage_data.fruits_data add price_date date

INSERT INTO storage_data.fruits_data values ('chennai','banana','tonnes',32.2,1600,2500,1800,'Rs/Quintal','01/01/2019')
INSERT INTO storage_data.fruits_data values ('madurai','apple','tonnes',0.2,1400,2900,2675,'Rs/Quintal','01/01/2019')
INSERT INTO storage_data.fruits_data values ('shimla','guava','tonnes',0.3,1800,3000,2000,'Rs/Quintal','01/01/2019')
INSERT INTO storage_data.fruits_data values ('hariyana','orange','tonnes',0.2,1600,2560,3500,'Rs/Quintal','01/01/2019')
INSERT INTO storage_data.fruits_data values ('goa','pappaya','tonne',0.24,600,2850,2500,'Rs/Quintal','01/01/2019')
INSERT INTO storage_data.fruits_data values ('kerala','strwaberry','tonnes',3.2,1800,4000,4000,'Rs/Quintal','01/01/2019')
INSERT INTO storage_data.fruits_data values ('namakal','mango','tonnes',6.1,1300,3150,2950,'Rs/Quintal','01/01/2019')
INSERT INTO storage_data.fruits_data values ('mumbai','pineapple','tonnes',7.2,1800,2950,3000,'Rs/Quintal','01/01/2019')
INSERT INTO storage_data.fruits_data values ('up','banana','tonnes',0.1,1900,2800,2850,'Rs/Quintal','01/01/2019')
INSERT INTO storage_data.fruits_data values ('chennai','watermelon','tonnes',0.1,1500,1850,2000,'Rs/Quintal','01/01/2019')

select * from storage_data.fruits_data
UPDATE storage_data.fruits_data SET Market_Center = 'maharashtra' where Market_Center = 'up'

select * from storage_data.fruits_data

DELETE  FROM storage_data.fruits_data where Market_Center = 'chennai'
select * from storage_data.fruits_data

/--select particular coloumn
SELECT Market_Center,Arrivals_in_tonnes FROM storage_data.fruits_data

/--conditional selection
SELECT Market_Center,Arrivals_in_tonnes FROM storage_data.fruits_data where Variety='banana'

/-- selection and transformation
SELECT Upper(Market_Center),Lower(Variety) FROM storage_data.fruits_data

/--selection and transformation aliasing
SELECT Upper(Market_Center)as MARKET_CENTER,Lower(Variety) as variety FROM storage_data.fruits_data




