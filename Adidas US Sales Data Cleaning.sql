-- + --------------------------- DATA IMPORT --------------------------- + --
-- 1. Created adidas database and set it as default schema.
-- CREATE DATABASE adidas;
-- USE adidas;

-- 2. Reviewed size of dataset.
-- SELECT COUNT(*) FROM sales; -- 9641 records

-- + --------------------------- DATA CLEANING --------------------------- + --

-- 3. Changed column names to remove special charaters and unwanted spaces.
-- ALTER TABLE sales RENAME COLUMN ï»¿Retailer TO retailer;
-- ALTER TABLE sales RENAME COLUMN `Retailer ID` TO retailer_id;
-- ALTER TABLE sales RENAME COLUMN `Invoice Date` TO invoice_date;
-- ALTER TABLE sales RENAME COLUMN Region TO region;
-- ALTER TABLE sales RENAME COLUMN State TO state;
-- ALTER TABLE sales RENAME COLUMN City TO city;
-- ALTER TABLE sales RENAME COLUMN Product TO product;
-- ALTER TABLE sales RENAME COLUMN `Price per Unit` TO price_per_unit;
-- ALTER TABLE sales RENAME COLUMN `Units Sold` TO units_sold;
-- ALTER TABLE sales RENAME COLUMN `Total Sales` TO total_sales;
-- ALTER TABLE sales RENAME COLUMN `Operating Profit` TO operating_profit;
-- ALTER TABLE sales RENAME COLUMN `Sales Method` TO sales_method;

-- 4. Checked for NULL values in the dataset. No NULL values were found.
-- SELECT * FROM sales
-- WHERE retailer IS NULL OR retailer_id IS NULL
-- OR invoice_date IS NULL
-- OR region IS NULL OR state IS NULL OR city IS NULL
-- OR product IS NULL OR price_per_unit IS NULL
-- OR units_sold IS NULL OR total_sales IS NULL
-- OR operating_profit IS NULL OR sales_method IS NULL;

-- 5. Checked column data types. Can also be done using i icon for table info.
-- SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'sales';

-- 6. Conversion of retailer_id column from text to int data type.
-- ALTER TABLE sales MODIFY COLUMN retailer_id int;

-- 7. Conversion of total_sales column from text to int data type. Replace unwanted comma character.
-- UPDATE sales SET total_sales = REPLACE(total_sales, ',', '');
-- ALTER TABLE sales MODIFY COLUMN total_sales int;

-- 8. Conversion of operating_profit column from text to int data type. Replace unwanted comma & dollar characters.
-- UPDATE sales SET operating_profit = REPLACE(REPLACE(operating_profit, '$', ''), ',', '');
-- ALTER TABLE sales MODIFY COLUMN operating_profit int;

-- 9. Checked for Empty and '0' values in the dataset.
-- SELECT * FROM sales
-- WHERE retailer = '' OR retailer_id = '' OR retailer_id = 0
-- 	OR invoice_date = '' OR invoice_date = 0
--  OR region = '' OR state = '' OR city = ''
-- 	OR product = '' OR price_per_unit = '' OR price_per_unit = 0 
-- 	OR units_sold = '' OR units_sold = 0
-- 	OR total_sales = '' OR total_sales = 0
-- 	OR operating_profit = '' OR operating_profit = 0
-- 	OR sales_method = '';

-- 10. Deleted '0' values in units_sold column.
-- DELETE FROM sales WHERE units_sold = 0;

-- 11. Conversion of units_sold column from text to int data type. Replace unwanted comma character.
-- UPDATE sales SET units_sold = REPLACE(units_sold, ',', '');
-- ALTER TABLE sales MODIFY COLUMN units_sold int;

-- 12. Calculated empty price_per_unit values based on total_sales and units_sold columns.
-- UPDATE sales SET price_per_unit = total_sales / units_sold WHERE price_per_unit = '';

-- 13. Conversion of price_per_unit column from text to int data type. Replace unwanted dollar character.
-- UPDATE sales SET price_per_unit = REPLACE(price_per_unit, '$', '');
-- ALTER TABLE sales MODIFY COLUMN price_per_unit int;

-- 14. Conversion of invoice_date column from text to date data type. Parse date text to yyyy-mm-dd standard format before converting data type.
-- UPDATE sales SET invoice_date = STR_TO_DATE(invoice_date, '%d-%m-%Y');
-- ALTER TABLE sales MODIFY COLUMN invoice_date date;

-- 15. Recheck column data types and formatting.
-- SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'sales';

-- 16. Changed retailer, region, state, city, product and sales_method columns to varchar data type.
-- ALTER TABLE sales MODIFY COLUMN retailer varchar(30);
-- ALTER TABLE sales MODIFY COLUMN region varchar(30);
-- ALTER TABLE sales MODIFY COLUMN state varchar(30);
-- ALTER TABLE sales MODIFY COLUMN city varchar(30);
-- ALTER TABLE sales MODIFY COLUMN product varchar(100);
-- ALTER TABLE sales MODIFY COLUMN sales_method varchar(30);

-- 17. Checked for total_sales value discrepancy.
-- SELECT * FROM sales WHERE total_sales != price_per_unit * units_sold; -- 5758 records

-- 18. Updated the total_sales column values.
-- UPDATE sales SET total_sales = price_per_unit * units_sold;

-- 19. Inspected all text data type columns for value discrepancies. Spelling discrepancy was found in product column.
-- SELECT DISTINCT(retailer) FROM sales;
-- SELECT DISTINCT(region) FROM sales;
-- SELECT DISTINCT(state) FROM sales;
-- SELECT DISTINCT(city) FROM sales;
-- SELECT DISTINCT(product) FROM sales;
-- SELECT DISTINCT(sales_method) FROM sales;

-- 20. Fixed the product column misspelled value.
-- UPDATE sales SET product = "Men's Apparel" WHERE product = "Men's aparel";

-- 21. Trimmed any existing whitespaces.
-- UPDATE sales SET retailer = TRIM(retailer);
-- UPDATE sales SET region = TRIM(region);
-- UPDATE sales SET state = TRIM(state);
-- UPDATE sales SET city = TRIM(city);
-- UPDATE sales SET product = TRIM(product);
-- UPDATE sales SET sales_method = TRIM(sales_method);

-- 22. Checked for duplicate rows. No duplicate rows were found.
-- SELECT retailer, retailer_id, invoice_date, region, state, city, product, price_per_unit,
-- 	units_sold, total_sales, operating_profit, sales_method, COUNT(*) AS duplicate_count
-- FROM sales
-- GROUP BY retailer, retailer_id, invoice_date, region, state, city, product, price_per_unit,
-- 	units_sold, total_sales, operating_profit, sales_method
-- HAVING COUNT(*) > 1;

-- 23. Configured NOT NULL Constraint.
-- ALTER TABLE `adidas`.`sales` 
-- CHANGE COLUMN `retailer_id` `retailer_id` INT NOT NULL,
-- CHANGE COLUMN `invoice_date` `invoice_date` DATE NOT NULL,
-- CHANGE COLUMN `units_sold` `units_sold` INT NOT NULL,
-- CHANGE COLUMN `total_sales` `total_sales` INT NOT NULL,
-- CHANGE COLUMN `operating_profit` `operating_profit` INT NOT NULL;

-- 24. Added sales_id column as Primary Key.
-- ALTER TABLE sales ADD COLUMN sales_id INT AUTO_INCREMENT PRIMARY KEY FIRST;


