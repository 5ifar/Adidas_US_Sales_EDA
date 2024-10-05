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
- [Data-driven Insights](#data-driven-insights)
- [Conclusion](#conclusion)

---

## [Adidas US Sales Live Dashboard Link]()

---

## Project Objective:

The objective of this project is to analyze Adidas US Sales data for 2020-21 by cleaning and organizing the dataset in MySQL Workbench, performing Exploratory Data Analysis (EDA) using Python and creating an interactive Power BI dashboard. The goal is to provide actionable insights into retailer performance, regional sales distribution, and sales trends across various channels to identify growth opportunities, optimize business strategies and drive profitability.

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

## Data-driven Insights and Recommendations:

### 1.1 KPI Performance Breakdown by Retailers
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%201.1.PNG" width="100%" height="100%"> </div>

**Insight:** West Gear, Foot locker & Sports Direct emerge as the Top Retailers, collectively accounting for 72% of Total Sales, Operating Profit and Units Sold.

**Recommendation:** Focus marketing efforts and partnership expansions with top-performing retailers like West Gear and Foot Locker to maintain sales momentum, while identifying ways to improve sales through under performing retailers like Amazon and Walmart.

### 1.2 KPI Performance Breakdown by Regions
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%201.2.PNG" width="100%" height="100%"> </div>

**Insight:** West & Northeast emerge as the Top Regions, collectively accounting for 51% of Total Sales, 47% of Operating Profit and 48% of Units Sold.

**Recommendation:** Target marketing and distribution strategies in regions outside of West and Northeast to balance out sales distribution and explore operating profit growth in less saturated Midwest and South regions.

### 1.3 KPI Performance Breakdown by Products 
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%201.3.PNG" width="100%" height="100%"> </div>

**Insight:** Men's Street Footwear, Women's Apparel & Men's Athletic Footwear emerge as the Top Products, collectively accounting for 60% of Total Sales, 61% of Operating Profit and 59% of Units Sold.

**Recommendation:** Increase product offerings and seasonal promotions in high-demand categories to maximize sales, while considering opportunities for product diversification in Men’s Apparel and Women’s Athletic Footwear categories.

### 1.4 KPI Performance Breakdown by Seasons
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%201.4.PNG" width="100%" height="100%"> </div>

**Insight:** Summer emerges as the Top Season, exclusively accounting for 29% of Total Sales, 29% of Operating Profit and 26% of Units Sold. Business surge in Summer can possibly be attributed to season break shopping.

**Recommendation:** Launch seasonal campaigns and discounts during summer, focusing on product lines with proven demand. Enhance year-round sales by analyzing other seasonal sales driving factors.

### 1.5 KPI Performance Breakdown by Sales Methods
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%201.5.PNG" width="100%" height="100%"> </div>

**Insight:** Online emerges as the Top Sales method, exclusively accounting for 37% & 38% by Total Sales & Units Sold respectively. While In-store exclusively accounting for 38%, emerges as the Top Sales method by Operating Profit.

**Recommendation:** Prioritize omnichannel strategies that enhance both Online sales platforms and Outlet experiences. Further invest in the Online segment to increase profitability and maintain margins.











### 2.1 
<div align="center"> <img src="" width="100%" height="100%"> </div>

**Insight:** 

**Recommendation:** 

---

