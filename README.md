# ☕ Bright Coffee Shop Sales Analysis 

## 📖 Project Overview
The **Bright Coffee Shop Sales Analysis** project was conducted to provide actionable business insights for the newly appointed CEO of **Bright Coffee Shop**.  
Using historical transactional data, this analysis identifies revenue trends, top-performing products, and peak sales periods — ultimately guiding data-driven strategic decisions to increase profitability and customer satisfaction.

---

## 🎯 Project Purpose
The purpose of this project is to:
- Support the CEO in understanding **sales performance** across time and product categories.  
- Provide **data-backed recommendations** for improving business operations and product mix.  
- Develop a **reproducible data analysis pipeline** using SQL, Excel, Power BI, and visualization tools.  

---

## 🧩 Objectives
1. Identify which products generate the most revenue.  
2. Determine what time of day the store performs best.  
3. Analyze sales trends across products and time intervals.  
4. Recommend actionable strategies to boost revenue.  

---

## 🧠 Key Findings & Insights
| Category | Finding | Insight |
|-----------|----------|---------|
| 🕐 **Peak Hours** | Most transactions occur between **8:00 AM and 10:00 AM** | Reflects morning coffee rush; potential for targeted promotions during this period |
| 🧁 **Top Products** | **Latte, Cappuccino, and Croissant** generate the most revenue | Core items should be prioritized for stock and marketing |
| 💰 **Revenue Trend** | Consistent sales growth on **weekdays**, with a slight dip on weekends | Suggests opportunity for weekend promotional campaigns |
| 📉 **Low Performers** | Some niche beverages and snacks have low turnover | Recommend bundling or promotional discounts to boost sales |
| 📊 **Customer Behavior** | Average transaction size increases during mid-morning | Suggests cross-selling or combo deals at this time |

---

## 🗂️ Dataset Description
**Dataset Name:** Bright Coffee Shop Sales  
**File Type:** Excel → CSV  
**Source:** Internal transaction system (provided in case study)  
**Period Covered:** Daily transactions (historical dataset)

### Columns Used:
- `transaction_id` – Unique identifier for each transaction  
- `transaction_date` – Date of sale  
- `transaction_time` – Time of transaction  
- `product_category` – Main product group (e.g., Beverage, Food, etc.)  
- `product_type` – Specific product sold  
- `transaction_qty` – Quantity sold  
- `unit_price` – Price per unit (cleaned and cast to numeric)  
- `total_amount` – Computed as `unit_price * transaction_qty`  
- `transaction_time_bucket` – Grouped time intervals (30-min or 1-hour buckets)  

---

## 🛠️ Tools & Technologies
| Category | Tools Used |
|-----------|-------------|
| **Data Processing** | Snowflake |
| **Data Analysis** | Microsoft Excel (Pivot Tables, Charts) |
| **Data Visualization** | Power BI |
| **Planning & Design** | Miro (Data Architecture & Flow Diagram) |
| **Presentation** | PowerPoint |

---

## 🧮 Steps Followed During Analysis

### **1. Planning & Architecture (Miro)**
- Designed **data flow architecture**: from data source → ETL process → Snowflake → visualization.  
- Outlined key metrics: total revenue, quantity sold, top-performing products, and time-based performance.

### **2. Data Processing (Snowflake)**
- Converted Excel data to CSV format.  
- Loaded data into Snowflake database.  
- Cleaned and transformed data:
  - Fixed numeric inconsistencies (e.g., commas in prices like `'3,1'` → `3.1`).  
  - Created `transaction_time_bucket` column for time-based grouping.  
  - Calculated `total_amount = unit_price * transaction_qty`.  
- Executed SQL aggregation queries to summarize data by:
  - Product type and category.  
  - 30-minute or 1-hour time intervals.

### **3. Data Analysis (Excel & Power BI)**
- Exported processed data into Excel for further analysis.  
- Built **Pivot Tables** to show:
  - Total revenue by product type.  
  - Peak time intervals for sales.  
  - Quantity of items sold by category.  
- Created Power BI dashboards visualizing:
  - Sales trends over time.  
  - Best-selling and underperforming products.  
  - Hourly/interval-based performance.

### **4. Presentation (PowerPoint / Canva)**
- Created a summarized executive presentation for the CEO:
  - Methodology overview.  
  - Key insights with visuals.  
  - Recommendations and next steps.  

---

## 💡 Recommendations
1. **Marketing Strategy:**  
   - Offer loyalty discounts or happy hour deals during slow periods.  
   - Promote high-performing items through combo deals.  

2. **Inventory Optimization:**  
   - Stock more of top-selling items during peak times.  
   - Reduce or bundle underperforming products.  

3. **Operational Adjustments:**  
   - Increase staff or prep capacity during morning rush hours.  
   - Introduce weekend campaigns to drive additional revenue.  

---

## 📊Visuals
**Dashboards & Charts**
- Revenue by Product Category (Bar Chart)  
- Peak Sales by Time Interval (Line Chart)  
- Total Quantity Sold by Product Type (Pie Chart)  
- Daily Revenue Trend (Area Chart)  



