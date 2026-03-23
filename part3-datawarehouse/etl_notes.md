## ETL Process Overview

The ETL (Extract, Transform, Load) process is used to prepare data for the data warehouse.

### Extract
Data is extracted from the provided dataset `retail_transactions.csv`. This dataset contains raw transactional data including product, store, date, and sales information.

### Transform
The extracted data is cleaned and transformed to ensure consistency and usability. This includes:
- Removing duplicate records
- Handling missing or null values
- Converting data types (e.g., dates and numeric values)
- Splitting data into relevant dimensions such as product, store, and date

### Load
The transformed data is loaded into the data warehouse using a star schema design:
- Fact table: `fact_sales`
- Dimension tables: `dim_product`, `dim_store`, and `dim_date`

This structured format improves query performance and supports efficient analytical reporting.

The ETL process ensures that the data warehouse contains clean, consistent, and reliable data for business intelligence and analysis.
