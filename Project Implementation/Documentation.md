# <img src="https://github.com/user-attachments/assets/6b9e8357-14bd-4085-8db6-2aace4dd48da" width="4%" height="4%"> Adidas US Sales EDA Project Phase-wise Implementation

---

## Phases of Implementation
- [Phase 1: Data Import](#phase-1-data-import)
- [Phase 2: Data Cleaning](#phase-2-data-cleaning)
- [Phase 3: Data Modelling](#phase-3-data-modelling)
- [Phase 4: Measures](#phase-4-measures)
- [Phase 5: Dashboard Design](#phase-5-dashboard-design)

---

## Phase 1: Data Import

### 1.1 Data Preparation:
- An overview of the data done before importing it into MySQL revealed that the Invoice Date column was not uniformly formatted. It contained a mixture of dates in mm/dd/yyyy and dd-mm-yyyy format.
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Invoice%20Date%20Column.PNG" width="40%" height="40%"> </div>

- Using Alteryx DateTime tool, the mm/dd/yyyy text was passed as custom date format and all dates were converted to the standard dd-mm-yyyy format.
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Invoice%20Date%20Column%20Formatted.PNG" width="40%" height="40%"> </div>

### 1.2 Database Creation:
- Before importing the sales data into MySQL server, I need a database to store the data. For this purpose, I created database ‘adidas’. In order to use the adidas database, I can either double click it to set it as the default schema or use the USE keyword.
```sql
-- 1. Create adidas database and set it as default schema.
CREATE DATABASE adidas;
USE adidas;
```

### 1.3 Data Import from CSV File:
- Imported the sales data from the adidas.sales.data.csv file using the Table Data Import Wizard functionality. Provided the CSV File Path to the wizard and created a new destination table ‘sales’ in the adidas database.
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Table%20Data%20Import.PNG" width="40%" height="40%"> </div>

- Preserved all columns and set their datatype as text at this stage to avoid data loss during import due to type conversion errors. They will be changed later post data cleaning.
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Table%20Data%20Import%20Settings.PNG" width="40%" height="40%"> </div>

- All original 9641 sales records were imported in the sales table.

---

## Phase 2: Data Cleaning

1. Reviewed size of dataset.
```sql
-- 2. Reviewed size of dataset.
SELECT COUNT(*) FROM sales; -- 9641 records
```

2. An initial glance of the dataset, shows presence of special characters and unwanted spaces in the name of the columns. To fix this, I changed the name of the columns.
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Initial%20Column%20Names.PNG" width="50%" height="50%"> </div>

3. Since some column names contain spaces they need to be enclosed in ticks when querying.
```sql
-- 3. Change column names to remove special charaters and unwanted spaces.
ALTER TABLE sales RENAME COLUMN ï»¿Retailer TO retailer;
ALTER TABLE sales RENAME COLUMN `Retailer ID` TO retailer_id;
ALTER TABLE sales RENAME COLUMN `Invoice Date` TO invoice_date;
ALTER TABLE sales RENAME COLUMN Region TO region;
ALTER TABLE sales RENAME COLUMN State TO state;
ALTER TABLE sales RENAME COLUMN City TO city;
ALTER TABLE sales RENAME COLUMN Product TO product;
ALTER TABLE sales RENAME COLUMN `Price per Unit` TO price_per_unit;
ALTER TABLE sales RENAME COLUMN `Units Sold` TO units_sold;
ALTER TABLE sales RENAME COLUMN `Total Sales` TO total_sales;
ALTER TABLE sales RENAME COLUMN `Operating Profit` TO operating_profit;
ALTER TABLE sales RENAME COLUMN `Sales Method` TO sales_method;
```
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Final%20Column%20Names.PNG" width="50%" height="50%"> </div>

4. Checked for NULL values in the dataset. No NULL values were found.
```sql
-- 4. Checked for NULL values in the dataset. No NULL values were found.
SELECT * FROM sales
WHERE retailer IS NULL OR retailer_id IS NULL
			OR invoice_date IS NULL
			OR region IS NULL OR state IS NULL OR city IS NULL
			OR product IS NULL OR price_per_unit IS NULL
			OR units_sold IS NULL OR total_sales IS NULL
			OR operating_profit IS NULL OR sales_method IS NULL;
```

5. Before I check for empty and ‘0’ values, it is essential that the columns have the correct datatype and formatting.
```sql
-- 5. Checked column data types. Can also be done using i icon for table info.
SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'sales';
```
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Initial%20Column%20Datatypes.PNG" width="20%" height="20%"> </div>

6. Columns such as retailer_id, invoice_date, price_per_unit, units_sold, total_sales and operating_profit were incorrectly set as text data types. They need to be corrected to respective int and date data types.

7. Conversion of retailer_id column from text to int data type.
```sql
-- 6. Conversion of retailer_id column from text to int data type.
ALTER TABLE sales MODIFY COLUMN retailer_id int;
```

8. Conversion of total_sales column from text to int data type: The column contains comma character in value which needs to be removed before converting it into integer data type.
```sql
-- 7. Conversion of total_sales column from text to int data type. Replace unwanted comma character.
UPDATE sales SET total_sales = REPLACE(total_sales, ',', '');
ALTER TABLE sales MODIFY COLUMN total_sales int;
```

9. Conversion of operating_profit column from text to int data type: The column contains comma and dollar character in value which needs to be removed before converting it into integer data type.
```sql
-- 8. Conversion of operating_profit column from text to int data type. Replace unwanted comma & dollar characters.
UPDATE sales SET operating_profit = REPLACE(REPLACE(operating_profit, '$', ''), ',', '');
ALTER TABLE sales MODIFY COLUMN operating_profit int;
```

10. I get errors when converting data types for units_sold and price_per_unit columns due to the presence of empty and 0 values. Hence I’ll need to either remove or impute these records.

11. Checked for Empty and ‘0’ values in the dataset.
```sql
-- 9. Checked for Empty and '0' values in the dataset.
SELECT * FROM sales
WHERE retailer = '' OR retailer_id = '' OR retailer_id = 0
	OR invoice_date = '' OR invoice_date = 0
	OR region = '' OR state = '' OR city = ''
	OR product = '' OR price_per_unit = '' OR price_per_unit = 0 
	OR units_sold = '' OR units_sold = 0
	OR total_sales = '' OR total_sales = 0
	OR operating_profit = '' OR operating_profit = 0
	OR sales_method = '';
```

<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Empty%20and%200%20values.PNG" width="70%" height="70%"> </div>

12. Since 0 value units_sold column basically indicates no sale I can delete these records. However I’ll not delete the empty values in price_per_unit column since these can be calculated by dividing total_sales and units_sold columns once they have appropriate datatypes for arithmetic operations.

13. Deleted 0 values in units_sold column.
```sql
-- 10. Deleted '0' values in units_sold column.
DELETE FROM sales WHERE units_sold = 0;
```

14. Conversion of units_sold column from text to int data type: The column contains comma character in value which needs to be removed before converting it into integer data type.
```sql
-- 11. Conversion of units_sold column from text to int data type. Replace unwanted comma character.
UPDATE sales SET units_sold = REPLACE(units_sold, ',', '');
ALTER TABLE sales MODIFY COLUMN units_sold int;
```

15. Now since both total_sales and units_sold columns have int data type, we can calculate the actual price_per_unit to replace the Empty values in the dataset.
```sql
-- 12. Calculated empty price_per_unit values based on total_sales and units_sold columns.
UPDATE sales SET price_per_unit = total_sales / units_sold WHERE price_per_unit = '';
```

16. Conversion of price_per_unit column from text to int data type: The column contains dollar character in value which needs to be removed before converting it into integer data type.
```sql
-- 13. Conversion of price_per_unit column from text to int data type. Replace unwanted dollar character.
UPDATE sales SET price_per_unit = REPLACE(price_per_unit, '$', '');
ALTER TABLE sales MODIFY COLUMN price_per_unit int;
```

17. Conversion of invoice_date column from text to date data type: The column contains values in dd-mm-yyyy format and so needs to be parsed to the MySQL Standard yyyy-mm-dd date format using STR_TO_DATE( ) function before converting it into date data type.
```sql
-- 14. Conversion of invoice_date column from text to date data type. Parse date text to yyyy-mm-dd standard format before converting data type.
UPDATE sales SET invoice_date = STR_TO_DATE(invoice_date, '%d-%m-%Y');
ALTER TABLE sales MODIFY COLUMN invoice_date date;
```
If I hadn’t parsed the invoice_date column using Alteryx DateTime tool, I would have had dates both in ‘dd-mm-yyyy’ and ‘mm-dd-yyyy’ formats. In such a case I would have to apply case statement during parsing using STR_TO_DATE( ) function.
```sql
UPDATE sales SET invoice_date =
	CASE
		WHEN invoice_date LIKE '____-__-__' THEN STR_TO_DATE(`invoice_date `, '%Y-%m-%d')
		WHEN invoice_date LIKE '__-__-____' THEN STR_TO_DATE(`invoice_date `, '%d-%m-%Y')
	END;
```

18. Recheck column data types and formatting. Post changing retailer_id, invoice_date, price_per_unit, units_sold, total_sales and operating_profit columns, all column data types are now correct.
```sql
-- 15. Recheck column data types and formatting.
SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'sales';
```

<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Final%20Column%20Datatypes.PNG" width="20%" height="20%"> </div>

19. The retailer, region, state, city, product and sales_method columns have text data type which takes up too much space and does not limit the input value length. Hence I changed the data type to varchar for all these columns.
```sql
-- 16. Changed retailer, region, state, city, product and sales_method columns to varchar data type.
ALTER TABLE sales MODIFY COLUMN retailer varchar(30);
ALTER TABLE sales MODIFY COLUMN region varchar(30);
ALTER TABLE sales MODIFY COLUMN state varchar(30);
ALTER TABLE sales MODIFY COLUMN city varchar(30);
ALTER TABLE sales MODIFY COLUMN product varchar(100);
ALTER TABLE sales MODIFY COLUMN sales_method varchar(30);
```

20. While calculating values for empty price_per_unit rows, I noticed for some records the total_sales value was not the product of price_per_unit and units_sold values. I queried this discrepancy.
```sql
-- 17. Checked for total_sales value discrepancy.
SELECT * FROM sales WHERE total_sales != price_per_unit * units_sold; -- 5758 records
```
Updated the value of total sales.
```sql
-- 18. Updated the total_sales column values.
UPDATE sales SET total_sales = price_per_unit * units_sold;
```

<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Final%20Total%20Sales%20Values.PNG" width="70%" height="70%"> </div>

21. Inspected all text data type columns for value discrepancies.
```sql
-- 19. Inspected all text data type columns for value discrepancies. Spelling discrepancy was found in product column.
SELECT DISTINCT(retailer) FROM sales;
SELECT DISTINCT(region) FROM sales;
SELECT DISTINCT(state) FROM sales;
SELECT DISTINCT(city) FROM sales;
SELECT DISTINCT(product) FROM sales;
SELECT DISTINCT(sales_method) FROM sales;
```

22. Discovered two similar products in the product column with a spelling discrepancy , causing MySQL to treat them as different values. Fixed the spelling.
```sql
-- 20. Fixed the product column misspelled value.
UPDATE sales SET product = "Men's Apparel" WHERE product = "Men's aparel";
```

<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Product%20Column%20Discrepancy.PNG" width="20%" height="20%"> </div>

23. Trimmed all the text datatype categorical columns to remove any existing visible/invisible white, leading and trailing spaces.
```sql
-- 21. Trimmed any existing whitespaces.
UPDATE sales SET retailer = TRIM(retailer);
UPDATE sales SET region = TRIM(region);
UPDATE sales SET state = TRIM(state);
UPDATE sales SET city = TRIM(city);
UPDATE sales SET product = TRIM(product);
UPDATE sales SET sales_method = TRIM(sales_method);
```

24. Checked for duplicate rows but did not find any.
```sql
-- 22. Checked for duplicate rows. No duplicate rows were found.
SELECT retailer, retailer_id, invoice_date, region, state, city, product, price_per_unit,
	units_sold, total_sales, operating_profit, sales_method, COUNT(*) AS duplicate_count
FROM sales
GROUP BY retailer, retailer_id, invoice_date, region, state, city, product, price_per_unit,
	units_sold, total_sales, operating_profit, sales_method
HAVING COUNT(*) > 1;
```

25. Configured Not Null Constraint on retailer_id, invoice_date, units_sold, total_sales and operating_profit column since if any of them are Null then it’s not a valid sales transaction for analysis.
```sql
-- 23. Configured NOT NULL Constraint.
ALTER TABLE `adidas`.`sales` 
CHANGE COLUMN `retailer_id` `retailer_id` INT NOT NULL,
CHANGE COLUMN `invoice_date` `invoice_date` DATE NOT NULL,
CHANGE COLUMN `units_sold` `units_sold` INT NOT NULL,
CHANGE COLUMN `total_sales` `total_sales` INT NOT NULL,
CHANGE COLUMN `operating_profit` `operating_profit` INT NOT NULL;
```

26. Added a new column sales_id to sales table to be used as the Primary key.
```sql
-- 24. Added sales_id column as Primary Key.
ALTER TABLE sales ADD COLUMN sales_id INT AUTO_INCREMENT PRIMARY KEY FIRST;
```

27. Final overview of table structure.
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Data%20Cleaning%20Images/Final%20Table%20Structure.PNG" width="70%" height="70%"> </div>

---

## Phase 3: Data Modelling
The Fact Table and 5 Dimension Tables were connected in a Star Schema. The configured PKey → FKey relationships are as follows:
|Primary Key (1)||Foreign Key (*)|
|-|-|-|
|product_id (dim_product)|→|product_id (fact_sales)|
|retailer_uid (dim_retailer)|→|retailer_uid (fact_sales)|
|salesmethod_id (dim_salesmethod)|→|salesmethod_id (fact_sales)|
|location_id (dim_location)|→|location_id (fact_sales)|
|date (dim_date)|→|invoice_date (fact_sales)|

<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Data%20Model/Adidas%20US%20Sales%20Data%20Model.PNG" width="100%" height="100%"> </div>

---

## Phase 4: Measures

- Revenue: Sum of Sales. (Reference table: fact_sales) -> `Revenue = SUM(fact_sales[total_sales])`
- Operating Profit: Sum of Operating Profits. (Reference table: fact_sales) -> `Operating Profit = SUM(fact_sales[operating_profit])`
- Units Sold: Sum of units sold. (Reference table: fact_sales) -> `Units Sold = SUM(fact_sales[units_sold])`
- Operating Profit Margin %: Percentage of Operating Profit over Total Sales. (Reference table: fact_sales) -> `Operating Profit Margin % = DIVIDE([Operating Profit], [Revenue], 0)`
- Average Selling Price: Average Price per Unit of product. (Reference table: fact_sales) -> `Average Selling Price = AVERAGE(fact_sales[price_per_unit])`
- Operating Profit per Unit: Operating Profit per Unit of product sold. (Reference table: fact_sales) -> `Operating Profit per Unit = DIVIDE([Operating Profit], [Units Sold], 0)`
- Revenue per Unit: Total Sales per Unit of product sold. (Reference table: fact_sales) -> `Revenue per Unit = DIVIDE([Revenue], [Units Sold], 0)`

---

## Phase 5: Dashboard Design

### 5.1 Color Pallet:

Color Hex Codes: `Dark Red: #780000, Med Red: #9D0910, Light Red: #DF817A, Neutral: #FFFFFF, Light Blue: #B3CDDE, Med Blue: #669BBC, Dark Blue: #336683`

Color Standard Assignment:
1. `Kohl’s - Dark Red: #780000, Walmart - Med Red: #9D0910, Amazon - Light Red: #DF817A, Sports Direct - Light Blue: #B3CDDE, Foot Locker - Med Blue: #669BBC, West Gear - Dark Blue: #336683`
2. `Women’s Apparel - Dark Red: #780000, Women’s Street Footwear - Med Red: #9D0910, Women’s Athletic Footwear - Light Red: #DF817A, Men’s Apparel - Light Blue: #B3CDDE, Men’s Athletic Footwear - Med Blue: #669BBC, Men’s Street Footwear - Dark Blue: #336683`
3. `South - Med Red: #9D0910, Midwest - Light Red: #DF817A, Southeast - Light Blue: #B3CDDE, Northeast - Med Blue: #669BBC, West - Dark Blue: #336683`
4. `In-store - Med Red: #9D0910, Outlet - Med Blue: #669BBC, Online - Dark Blue: #336683`
5. `Summer - Med Red: #9D0910, Spring - Light Red: #DF817A, Autumn - Light Blue: #B3CDDE, Winter - Med Blue: #669BBC`

### 5.2 Filter Panel:

- Added Filter Slicers for Fields: `Year, Season , Region, State, City, Product, Retailer & Sales Method`. All Slicers affect the entire Dashboard.
- Configured Clear Filters button to remove any applied filters on visuals.

### 5.3 KPIs Panel:

- Added Simple Card visual KPIs using Measures: `Revenue, Units Sold, Operating Profit, Operating Profit Margin %, Average Selling Price, Revenue per Unit and Operating Profit per  Unit`.















