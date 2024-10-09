# <img src="https://github.com/user-attachments/assets/6b9e8357-14bd-4085-8db6-2aace4dd48da" width="4%" height="4%"> Adidas US Sales EDA

<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Adidas%20US%20Sales%20EDA%20Project%20Thumbnail%2BIcon.png" width="100%" height="100%"> </div>

This repository serves as my documentation for the Adidas US Sales - Exploratory Data Analysis Project.

The entire project has been implemented using Python 3 on Jupyter Notebook, MySQL Workbench & Microsoft Power BI Desktop and published on Microsoft Power BI Service.

---

## Contents:
Please find the sectional links for the project below:
- [Adidas US Sales Live Dashboard Link]()
- [Adidas US Sales EDA Kaggle Python Notebook](https://www.kaggle.com/code/sagarmorework/adidas-us-sales-eda)
- [Project Objective](#project-objective)
- [Tools used & Methodologies implemented](#tools-used)
- [About the Dataset](#about-the-dataset)
  - [Data Sources](#data-sources)
  - [Data Dictionary](#data-dictionary)
  - [Data Integrity](#data-integrity)
- [Data Model](#data-model)
- [Project Implementation](#project-implementation)
- [Adidas US Sales Dashboard Overview](#adidas-us-sales-dashboard-overview)
- [Data-driven Insights and Recommendations](#data-driven-insights-and-recommendations)
- [Conclusion](#conclusion)

---

## [Adidas US Sales Live Dashboard Link]()
## [Adidas US Sales EDA Kaggle Python Notebook](https://www.kaggle.com/code/sagarmorework/adidas-us-sales-eda)

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

## Adidas US Sales Dashboard Overview:

<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Power%20BI%20Dashboard/Dashboard%20Images/Adidas%20US%20Sales%20Dashboard.png" width="100%" height="100%"> </div>

---

## Data-driven Insights and Recommendations:

### 1.1 KPI Performance Breakdown by Retailers
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%201.1.PNG" width="75%" height="75%"> </div>

**Insight:** West Gear, Foot locker & Sports Direct emerge as the Top Retailers, collectively accounting for 72% of Total Sales, Operating Profit and Units Sold.

**Recommendation:** Focus marketing efforts and partnership expansions with top-performing retailers like West Gear and Foot Locker to maintain sales momentum, while identifying ways to improve sales through under performing retailers like Amazon and Walmart.

### 1.2 KPI Performance Breakdown by Regions
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%201.2.PNG" width="75%" height="75%"> </div>

**Insight:** West & Northeast emerge as the Top Regions, collectively accounting for 51% of Total Sales, 47% of Operating Profit and 48% of Units Sold.

**Recommendation:** Target marketing and distribution strategies in regions outside of West and Northeast to balance out sales distribution and explore operating profit growth in less saturated Midwest and South regions.

### 1.3 KPI Performance Breakdown by Products 
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%201.3.PNG" width="75%" height="75%"> </div>

**Insight:** Men's Street Footwear, Women's Apparel & Men's Athletic Footwear emerge as the Top Products, collectively accounting for 60% of Total Sales, 61% of Operating Profit and 59% of Units Sold.

**Recommendation:** Increase product offerings and seasonal promotions in high-demand categories to maximize sales, while considering opportunities for product diversification in Men’s Apparel and Women’s Athletic Footwear categories.

### 1.4 KPI Performance Breakdown by Seasons
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%201.4.PNG" width="75%" height="75%"> </div>

**Insight:** Summer emerges as the Top Season, exclusively accounting for 29% of Total Sales, 29% of Operating Profit and 26% of Units Sold. Business surge in Summer can possibly be attributed to season break shopping.

**Recommendation:** Launch seasonal campaigns and discounts during summer, focusing on product lines with proven demand. Enhance year-round sales by analyzing other seasonal sales driving factors.

### 1.5 KPI Performance Breakdown by Sales Methods
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%201.5.PNG" width="75%" height="75%"> </div>

**Insight:** Online emerges as the Top Sales method, exclusively accounting for 37% & 38% by Total Sales & Units Sold respectively. While In-store exclusively accounting for 38%, emerges as the Top Sales method by Operating Profit.

**Recommendation:** Prioritize omnichannel strategies that enhance both Online sales platforms and Outlet experiences. Further invest in the Online segment to increase profitability and maintain margins.

### 2.1 Temporal Trend - Overall
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%202.1.PNG" width="50%" height="50%"> </div>

**Insight:** Total Sales, Operating Profit & Units Sold in 2021 were roughly 4 times, 4.5 times & 4.3 times respectively higher on average than in 2020 possibly due to bounce back in consumption post Covid-19.

**Recommendation:** Analyze post-COVID purchasing trends to identify and predict consumer behavior changes, leveraging this momentum to strategize for sustained growth in 2022 and beyond.

### 2.2 Temporal Trend by Retailers
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%202.2.PNG" width="50%" height="50%"> </div>

**Insight:** All the 3 metrics declined towards the end of 2020 but recovered back to base levels around mid-2021 after Covid-19 lockdown was lifted. While West Gear dominated overall in 2020, it's position was taken over by Foot Locker & Sports Direct in 2021.

**Recommendation:** Strengthen partnerships with Foot Locker and Sports Direct by offering exclusive promotions and products, while also revamping marketing strategies for West Gear to boost competitiveness.

### 2.3 Temporal Trend by Products
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%202.3.PNG" width="50%" height="50%"> </div>

**Insight:** All the 3 metrics reached their lowest values in June 2020 and climbed back to their highest value in July - Aug 2021. Men's Street Footwear category dominates all metrics across both years.

**Recommendation:** Use Predictive analysis to prepare for future seasonal demand spikes, particularly for Men’s Street Footwear, ensuring sufficient inventory and targeted promotions during peak periods.

### 2.4 Temporal Trend by Regions
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%202.4.PNG" width="50%" height="50%"> </div>

**Insight:** While West region dominates all 3 metrics in the first half of 2021, it's position is periodically challenged post June 2021 by MidWest, South & Northeast regions. South region experience a sudden surge of all 3 metrics in the month of August & September.

**Recommendation:** Reallocate resources and marketing focus to regions like South and Northeast during times of surging demand like August and September to capitalize on market shifts and seasonal sales variations.

### 2.5 Temporal Trend by Seasons
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%202.5.PNG" width="50%" height="50%"> </div>

**Insight:** Women's Apparel sells more units than Men's Athletic Footwear in Spring unlike rest of the seasons.

**Recommendation:** Tailor marketing campaigns to promote Women’s Apparel during the Spring season, capitalizing on the higher demand and ensuring stock levels are optimized for this trend.

### 3.1 Comparative Analysis of Products by Retailers
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%203.1.PNG" width="50%" height="50%"> </div>

**Insight:** Contrasting overall trend, Sports Direct & Walmart generate more Operating Profit from Women's Apparel than Men's Street Footwear.

**Recommendation:** Increase Women’s Apparel inventory and promotions through Sports Direct & Walmart, optimizing profitability from these retailers by aligning product lines with customer preferences.

### 3.2 Comparative Analysis of Retailers over Regions
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%203.2.PNG" width="50%" height="50%"> </div>

**Insight:** Foot Locker emerges as the Top Retailer across all 3 metrics in all regions except South & West regions, where Sports Direct & West Gear dominate respectively.

**Recommendation:** Refine region-specific strategies by leveraging Foot Locker’s success in some regions and strengthening Sports Direct & West Gear’s market presence in South & West regions with exclusive product offerings or targeted promotions.

### 3.3 Comparative Analysis of Products over Regions
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%203.3.PNG" width="50%" height="50%"> </div>

**Insight:** Contrasting overall trend, in South region Women's Apparel dominates Men's Street Footwear in Total Sales & Operating Profit. In West region, Men's Athletic Footwear dominates Women's Apparel in Units Sold.

**Recommendation:** Prioritize Women’s Apparel marketing campaigns and promotions in the South region, focusing on demand growth opportunities for this product line to maximize revenue.

### 4.1 Geospatial Analysis of States
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%204.1.PNG" width="50%" height="50%"> </div>

**Insight:** New York, California, Florida and Texas emerge as the Top 4 States across all 3 metrics. Between the Top 4 States, Texas lags behind in Total Sales, California & Texas lag behind in Operating Profit and Florida lags behind in Units Sold.

**Recommendation:** Implement targeted regional strategies to address the specific underperformance in these states, such as customized pricing strategies, localized advertising, or new retail partnerships.

### 4.2 Geospatial Analysis of Top 20 States & Cities
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%204.2.PNG" width="50%" height="50%"> </div>

**Insight:** New York, California and Florida emerge as the Top 3 States by Total Sales & Operating Profit while New York, California and Texas emerge as the Top 3 States by Units Sold. New York, Charleston and San Francisco emerge as the Top 3 Cities by Total Sales. Charleston, New York and Miami emerge as the Top 3 Cities by Operating Profit. New York, Charleston and Houston emerge as the Top 3 Cities by Units Sold.

**Recommendation:** Focus efforts on improving sales performance in Texas by understanding the local market dynamics and launching targeted marketing campaigns to boost overall sales and profitability.

### 5.1 Price per Unit Distribution by Products
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%205.1.PNG" width="75%" height="75%"> </div>

**Insight:** While Women's Apparel has the highest price per unit outliers, Women's Apparel & Men's Apparel emerge as the highest median price products with the cost of 51 USD and 50 USD per unit respectively.

**Recommendation:** Increase investment in premium pricing strategies for Women’s Apparel to maintain profitability, while also exploring opportunities to introduce higher-end product lines in other categories.

### 5.2 Operating Profit % Distribution by Products
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%205.2.PNG" width="75%" height="75%"> </div>

**Insight:** Men's & Women's Apparel have the highest Operating Profit % outliers and Women's Apparel has the highest median Operating Profit % of roughly around 7 %.

**Recommendation:**  Adidas should prioritize expanding its apparel lines, particularly Women's Apparel. Strategic investments in product development, targeted marketing, and optimized inventory for these categories can help capitalize on high profitability potential.

### 5.3 Key Sales Metrics Correlation
<div align="center"> <img src="https://github.com/5ifar/Adidas_US_Sales_EDA/blob/main/Assets/Insights%20Images/Insight%205.3.PNG" width="50%" height="50%"> </div>

**Insight:** Total Sales and Operating Profit metrics show strongest correlation while Total Sales and Price per Unit metrics show weakest correlation.

**Recommendation:** Focus on driving sales volume through strategic pricing and promotional tactics to boost profitability, while exploring ways to optimize price per unit for better margin control.

---

## Conclusion:
The Adidas US Sales Analysis for FY 2020-21 uncovered key areas of strength and opportunities for growth. Top-performing retailers like West Gear, Foot Locker, and Sports Direct, along with regions such as the West and Northeast, have been crucial contributors to sales and profit. Similarly, product categories like Men's Street Footwear and Women's Apparel have emerged as highly profitable segments. However, disparities in performance across regions, products, and sales channels highlight the need for strategic adjustments. Strengthening underperforming regions like the Midwest and Nebraska, optimizing online sales, and leveraging high-margin product categories, especially Women’s Apparel, offer Adidas the potential to enhance operational efficiency and drive sustainable growth. By focusing on these actionable insights, Adidas can optimize its business strategies to fuel future profitability and market expansion.

---
