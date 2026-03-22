## Storage Format Justification

Parquet is often preferred over CSV for large-scale analytical workloads because it is a columnar storage format. Unlike CSV, which stores data row by row, Parquet stores data column-wise, making it highly efficient for analytical queries that access only a few columns.

Parquet also supports compression, which reduces storage space and improves query performance. It allows faster data retrieval because only the required columns are read instead of the entire dataset.

Additionally, Parquet preserves data types and schema information, unlike CSV, which stores everything as plain text. This reduces errors and improves data consistency.

Therefore, Parquet is more efficient, faster, and suitable for big data analytics compared to CSV.
