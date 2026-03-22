## Design Justification

The architecture is designed to handle data from multiple sources such as CSV files, APIs, and user inputs. These sources are ingested using an ETL pipeline, which ensures data is cleaned and transformed before storage.

For storage, a combination of MySQL and MongoDB is used. MySQL handles structured data with strong consistency, while MongoDB manages flexible and semi-structured data. A data lake is used to store raw data in formats like CSV, JSON, and Parquet.

The processing layer includes a data warehouse and DuckDB, which enable efficient analytical queries and reporting. The warehouse organizes data into structured schemas for business intelligence.

Finally, the serving layer provides dashboards and analytics, allowing users to gain insights from the processed data.

This architecture is scalable, flexible, and supports both transactional and analytical workloads effectively.
