## Anomaly Analysis

### Insert Anomaly
In the flat table, a new product cannot be added unless there is an associated order. For example, if a new product is introduced but no customer has ordered it yet, it cannot be inserted into the table.

### Update Anomaly
Customer details such as city are repeated across multiple rows. If a customer changes their city, it must be updated in multiple rows, which can lead to inconsistency if some rows are not updated.

### Delete Anomaly
If the last order of a customer is deleted, all information about that customer is also removed from the database, leading to loss of important data.

## Normalization Justification

Keeping all data in a single table leads to redundancy and inconsistency. For instance, customer details such as name and city are repeated in multiple rows for each order, increasing storage usage and making updates difficult. If a customer changes their information, it must be updated in multiple places, increasing the risk of errors.

Normalization divides the data into separate tables such as customers, products, orders, and sales representatives. This reduces duplication and ensures data consistency. Relationships between tables using foreign keys maintain data integrity and prevent anomalies such as insert, update, and delete issues.

Therefore, normalization is not over-engineering but a necessary step to create a scalable, efficient, and reliable database system.
