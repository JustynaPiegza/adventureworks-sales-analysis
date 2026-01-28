# adventureworks-sales-analysis
Sales analysis project using SQL Server and Excel (AdventureWorks database)

# Sales Analysis Project (AdventureWorks)

## Project overview
This project focuses on analyzing sales data using SQL Server and Excel.
The main goal is to practice data exploration, cleaning, and basic business analysis
based on the AdventureWorks database.

## Data source
- Database: AdventureWorks2014
- Source: Microsoft sample database
- Environment: SQL Server Management Studio (SSMS)

## Scope of analysis
- Exploring database structure and schemas
- Identifying key sales tables
- Checking data quality (null values, date ranges)
- Creating aggregated sales metrics (monthly sales)
- Exporting results to Excel for further analysis and visualization

  ## SQL analysis

### Data exploration and quality checks
Before performing the analysis, basic data exploration was conducted to understand
the structure and quality of the data. This included:
- checking for null values in key columns
- verifying the date range of available sales data

Relevant queries can be found in:
- `sql/00_data_exploration.sql`

### Business analysis queries

1. **Monthly sales over time**
   - Aggregation of total sales value on a monthly level
   - Sales value calculated using `TotalDue`
   - Time dimension based on `OrderDate`

   Query:
   - `sql/01_monthly_sales.sql`


## Tools used
- SQL Server (T-SQL)
- SQL Server Management Studio (SSMS)
- Microsoft Excel

## Project status
Work in progress 🚧



## Business questions

1. How does total sales value change over time?
   - Monthly sales aggregated using OrderDate and TotalDue
  
## Insights

- Total sales increase over time, especially between 2011 and 2013.
- Sales in 2014 are lower, which may be caused by incomplete data for that year.
- Monthly data shows changes that are not visible in yearly summaries.

