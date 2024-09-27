# <img src="https://github.com/user-attachments/assets/6b9e8357-14bd-4085-8db6-2aace4dd48da" width="4%" height="4%"> Adidas US Sales EDA Project Phase-wise Implementation

---

## Phases of Implementation
- [Phase 1: Data Import](#phase-1-data-import)

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



