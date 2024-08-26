## Description
This project demonstrates the use of SQL set operations (UNION, INTERSECT, EXCEPT) to manipulate and analyze data across two tables: actor and customer. The focus is on comparing the first_name columns from both tables to achieve different outcomes, such as listing all unique names, finding common names, and identifying names that are exclusive to one table. Additionally, these operations are repeated to include duplicate entries.

## SQL Queries
UNION: Combine All Unique First Names

This query retrieves all unique first_name entries from both the actor and customer tables.

```sql

(SELECT DISTINCT first_name FROM actor)
UNION
(SELECT DISTINCT first_name FROM customer);
```
Purpose: Combines the unique first_name values from both tables, ensuring no duplicates are included in the result set.
INTERSECT: Find Common First Names

This query retrieves the first_name entries that are common to both the actor and customer tables.

```sql

(SELECT DISTINCT first_name FROM actor)
INTERSECT
(SELECT DISTINCT first_name FROM customer);
```
Purpose: Identifies first_name values that exist in both tables, helping to find common entries.
EXCEPT: Find Exclusive First Names in Actor Table

This query retrieves the first_name entries that exist in the actor table but not in the customer table.

```sql

(SELECT DISTINCT first_name FROM actor)
EXCEPT
(SELECT DISTINCT first_name FROM customer);
```
Purpose: Identifies first_name values that are present in the actor table but absent from the customer table, helping to spot unique entries.
UNION ALL: Combine All First Names Including Duplicates

This query retrieves all first_name entries from both the actor and customer tables, including duplicates.

```sql

(SELECT DISTINCT first_name FROM actor)
UNION ALL
(SELECT DISTINCT first_name FROM customer);
```
Purpose: Similar to the UNION operation but includes duplicates, providing a complete list of all entries.
INTERSECT ALL: Find All Common First Names Including Duplicates

This query retrieves all first_name entries that are common to both the actor and customer tables, including duplicates.

```sql

(SELECT DISTINCT first_name FROM actor)
INTERSECT ALL
(SELECT DISTINCT first_name FROM customer);
```
Purpose: Similar to the INTERSECT operation but includes duplicates, offering a more detailed comparison.
EXCEPT ALL: Find All Exclusive First Names in Actor Table Including Duplicates

This query retrieves all first_name entries from the actor table that are not in the customer table, including duplicates.

```sql

(SELECT DISTINCT first_name FROM actor)
EXCEPT ALL
(SELECT DISTINCT first_name FROM customer);
```
Purpose: Similar to the EXCEPT operation but includes duplicates, providing a comprehensive view of unique entries.
## Use Case
UNION: Useful when you need to combine results from two tables while removing duplicates.

INTERSECT: Ideal for identifying common data between two tables.

EXCEPT: Helps in finding data that exists in one table but not in another.

UNION ALL, INTERSECT ALL, EXCEPT ALL: These variants are useful when you need to include duplicates in the result set, offering a more granular analysis of the data.

## Conclusion
This project highlights how SQL set operations can be used to efficiently compare and analyze data across multiple tables. The queries provide insight into both unique and overlapping entries, catering to various data analysis needs.
