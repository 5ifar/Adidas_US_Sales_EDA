# <img src="https://github.com/user-attachments/assets/6b9e8357-14bd-4085-8db6-2aace4dd48da" width="4%" height="4%"> Adidas US Sales EDA

This repository serves as my documentation for the Adidas US Sales - Exploratory Data Analysis Project.

The entire project has been implemented using Python 3 on Jupyter Notebook, MySQL Workbench & Microsoft Power BI Desktop and published on Microsoft Power BI Service.

---

## Contents:
Please find the sectional links for the project below:
- [Adidas US Sales Live Dashboard Link]()
- [Project Objective](#project-objective)
- [Tools used & Methodologies implemented](#tools-used)
- [About the Dataset](#about-the-dataset)
  - [Data Sources](#data-sources)
  - [Data Dictionary](#data-dictionary)
  - [Data Integrity](#data-integrity)
- [Data Model](#data-model)
- [Project Implementation](#project-implementation)
- [Adidas US Sales Dashboard Overview]()
- [Data-driven Insights](#data-driven-insights)
- [Conclusion](#conclusion)

---

## [Adidas US Sales Live Dashboard Link]()

---

## Project Objective:

The objective of this project is to analyze mock Adidas US Sales data for 2020-21 by cleaning and organizing the dataset in MySQL Workbench, performing Exploratory Data Analysis (EDA) using Python and creating an interactive Power BI dashboard. The goal is to provide actionable insights into retailer performance, regional sales distribution, and sales trends across various channels to optimize business strategies and drive growth.

---

## Tools used:
1. MySQL Workbench: for Data Cleaning
2. Jupyter Notebook - Python 3: for Exploratory Data Analysis 
3. Microsoft Power BI: for Data ETL, Data Modelling, Data Visualization & Dashboarding
4. GitHub - for Documentation

## Skills & Methodologies implemented:
1. Data Cleaning: **CRUD Operations, Power Query**
2. Data Manipulation: **DAX Measures & Columns, Parameters**
3. Data Modelling
4. Exploratory Data Analysis: **Jupyter Python 3 Libraries used: Numpy, Pandas, Matplotlib, Seaborn, Plotly, DateTime**
5. Data Visualization: **Conditional Formatting**
6. Dashboarding: **Filters, Custom Icon Buttons, Slicers, Bookmarks**
7. Report Publishing: **PBI Service and Report Optimization**
8. Documentation

---

## About the Dataset:

### Data Sources:
The [Adidas US Sales Kaggle Dataset](https://www.kaggle.com/datasets/sagarmorework/adidas-us-sales) contains a single CSV file with a single table namely: dim_customer.csv: 9641 records | 13 columns.

### Data Dictionary:
**Business Domain: Sales**

**File: adidas_us_sales: 9641 records | 13 columns**

|Column name|Data type|Description|
|-|-|-|
|sales_id|int|A unique identifier assigned to each record in the dataset.|
|retailer|varchar|Represents the business or individual that sells Adidas products directly to consumers.|
|retailer_id|int|A unique identifier assigned to each retailer in the dataset.|
|invoice_date|date|The date when a particular invoice or sales transaction took place.|
|region|varchar|Refers to a specific geographical area or district where the sales transaction occured.|
|state|varchar|Represents a specific administrative division or territory within a country where the sales transaction occured.|
|city|varchar|Refers to an urban area or municipality where the sales transaction occured.|
|product|varchar|Represents the classification or grouping of Adidas products.|
|price_per_unit|int|The cost or price associated with a single unit of a product. Values in USD.|
|units_sold|int|The quantity or number of units of a particular product sold during a specific sales transaction.|
|total_sales|int|The overall revenue generated from the sales transaction. Values in USD.|
|operating_profit|int|The profit earned by the retailer from its normal business operations. Values in USD.|
|sales_method|varchar|The approach or channel used by the retailer to sell its products.|

## Data Integrity:
ROCCC Evaluation:
- Reliability: MED - The raw dataset is created and updated on Kaggle with a usability score of 9.31. It has a single 1.07 Mb CSV file.
- Originality: MED - Second party provider (Kaggle)
- Comprehensiveness: LOW - Single file with a total of 9 Thousand records. Dataset contains multiple dimension parameters for Retailers & Products as well as comprehensive order data.
- Current: LOW - Dataset is from FY 2020 to 2021 data i.e almost 4 years old. So its not very relevant.
- Citation: LOW - Official citation/reference not available.

---

## Data Model:
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Data%20Model/Adidas%20US%20Sales%20Data%20Model.PNG" width="100%" height="100%"> </div>

---

## Project Implementation:
Please find the documentation links for the project phase-wise implementation below:
- [Phase 1: Data Import](https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Project%20Implementation/Documentation.md#phase-1-data-import)
- [Phase 2: Data Cleaning](https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Project%20Implementation/Documentation.md#phase-2-data-cleaning)
- [Phase 3: Data Modelling](https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Project%20Implementation/Documentation.md#phase-3-data-modelling)
- [Phase 4: Measures](https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Project%20Implementation/Documentation.md#phase-4-measures)
- [Phase 5: Dashboard Design](https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Project%20Implementation/Documentation.md#phase-5-dashboard-design)

---
