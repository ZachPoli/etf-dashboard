# Tableau ETF Analysis-dashboard
Tableau Dashboard I made to analyze ETF performance from 2012 - 2016

# ETF Performance Dashboard (2012–2016)

## Overview

This project analyzes and visualizes the total return performance of 341 U.S.-listed ETFs from January 3, 2012 to December 30, 2016. The interactive Tableau dashboard allows users to compare ETF returns, identify top and bottom performers, and explore summary statistics.

## Data Source

- **Kaggle Dataset:** [Price-Volume Data for All US Stocks & ETFs](https://www.kaggle.com/datasets/borismarjanovic/price-volume-data-for-all-us-stocks-etfs?resource=download)
- The dataset contains daily price and volume data for all U.S. stocks and ETFs, provided as individual `.us.txt` files per ticker.

## Data Preparation

1. **File Conversion:**  
   The raw data was provided as separate `.us.txt` files for each ETF. Each file was named with its ticker symbol.
2. **Merging:**  
   Using Python and pandas, all ETF files were merged into a single CSV file, with a new `ticker` column extracted from the filenames.
3. **Cleaning:**  
   - Ensured consistent column formatting and data types.
   - Removed incomplete or malformed records.
   - Filtered to include only ETFs with data available for both January 3, 2012 and December 30, 2016.
4. **Database Import:**  
   The cleaned CSV was imported into PostgreSQL for SQL-based analysis.
5. **Analysis:**  
   Calculated total return percent for each ETF over the selected period using SQL.
6. **Visualization:**  
   Exported the results to CSV and visualized them in Tableau.

## Dashboard Features

- **Interactive Bar Chart:**  
  Compare total return percent for each ETF, sorted from lowest to highest.
- **Tooltips:**  
  Hover over any bar to see the ticker, start/end price, and total return.
- **Summary Statistics:**  
  Displays average and median ETF returns for the period.
- **Filters and Search:**  
  Easily find specific ETFs or focus on top/bottom performers.
- **Data & Methodology Section:**  
  Explains the data source and cleaning process.

## How to Use

- Open the Tableau dashboard (`.twbx` file) in Tableau Desktop or view the [published dashboard on Tableau Public]
- https://public.tableau.com/app/profile/zachary.maness/viz/TableauStockWorkbook/Sheet1
- https://public.tableau.com/app/profile/zachary.maness/viz/TableauStockWorkbook/Dashboard1?publish=yes
- https://public.tableau.com/app/profile/zachary.maness/viz/TableauStockWorkbook/Sheet2?publish=yes
- Explore the interactive features to analyze ETF performance.

## Files

- `etf_returns_2012_2016.twbx` — Tableau dashboard
- `merge_etf_files.py` — Python script for merging and cleaning data
- `analysis.sql` — SQL queries for calculating returns
- `screenshots/` — Dashboard preview images

## Example Visual

![ETF Dashboard Preview]
<img width="1027" height="6963" alt="Tableau ETF Bar Chart" src="https://github.com/user-attachments/assets/5b81c1d7-372d-4936-8ecf-e6cde3a5cdb3" />

<img width="160" height="119" alt="Tableau Stock Image" src="https://github.com/user-attachments/assets/18cc50e7-254a-4a0f-98f1-f323d93db9e6" />


## Skills Demonstrated

- Data wrangling and cleaning with Python (pandas)
- SQL analytics with PostgreSQL
- Data visualization and dashboard design with Tableau
- End-to-end data project workflow

## License

This project uses data from Kaggle. Please review the [Kaggle dataset license](https://www.kaggle.com/datasets/borismarjanovic/price-volume-data-for-all-us-stocks-etfs?resource=download) for usage terms.

---

*Created by Zachary Maness.*
