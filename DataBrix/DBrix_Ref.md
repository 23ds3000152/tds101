# Databricks Reference

This document provides reference information for working with Databricks, integrating cloud storage, and using Apache Spark SQL engines. It is intended to serve as a quick guide for students and professionals working with data platforms in the cloud.

---

## 1. Databricks Overview

Databricks is a unified analytics platform for big data and machine learning. Built on Apache Spark, it provides collaborative workspaces, interactive notebooks, and seamless integration with popular cloud storage providers.

**Key Features:**
- Collaborative notebooks (Python, SQL, Scala, R)
- Auto-scaling and auto-termination clusters
- Integrated workflow scheduling
- Built-in libraries for data science and machine learning

---

## 2. Cloud Storage Integration

Databricks can access and process data stored in major cloud storage solutions:

### Supported Storage Providers

| Provider        | Example Mount Point           | Access Method                       |
|-----------------|------------------------------|-------------------------------------|
| AWS S3          | /mnt/s3bucket                | dbutils.fs.mount, direct access     |
| Azure Blob      | /mnt/blobstorage             | dbutils.fs.mount, direct access     |
| Google Cloud    | /mnt/gcs                     | dbutils.fs.mount, direct access     |

### Common Commands

```python
# List files in a directory
dbutils.fs.ls("/mnt/s3bucket/data/")

# Read CSV file from mounted storage
df = spark.read.csv("/mnt/blobstorage/data/file.csv", header=True, inferSchema=True)

# Save DataFrame to storage
df.write.parquet("/mnt/gcs/output/")

# Mount external storage (example for AWS S3)
dbutils.fs.mount(
  source = "s3a://your-bucket-name",
  mount_point = "/mnt/s3bucket",
  extra_configs = {"fs.s3a.access.key": "<ACCESS_KEY>", "fs.s3a.secret.key": "<SECRET_KEY>"}
)
```

---

## 3. Apache Spark SQL Engine

Apache Spark SQL is the core component for querying structured data within Databricks.

### Creating DataFrames

```python
# Read data from a CSV file
df = spark.read.csv("/mnt/blobstorage/data/file.csv", header=True, inferSchema=True)

# Create a temporary view
df.createOrReplaceTempView("my_table")
```

### Querying with SQL

```sql
-- SQL query in a notebook cell (using %sql)
%sql
SELECT column1, COUNT(*) FROM my_table GROUP BY column1
```

### Writing Data

```python
# Write as Parquet
df.write.mode("overwrite").parquet("/mnt/s3bucket/output/")
```

### Common Spark SQL Functions

| Function          | Description                              |
|-------------------|------------------------------------------|
| SELECT            | Selects columns from a table             |
| WHERE             | Filters rows                              |
| GROUP BY          | Groups rows for aggregation              |
| ORDER BY          | Sorts results                            |
| JOIN              | Joins multiple tables                    |
| CAST/CONVERT      | Changes data types                       |

---

## 4. Useful Tips

- Use `%fs` magic commands for file operations in notebooks (e.g., `%fs ls /mnt/s3bucket/`).
- Monitor cluster usage and costs via the Databricks workspace UI.
- Use `dbutils.widgets` to create interactive dashboards in notebooks.
- Leverage Databricks’ built-in visualization tools for quick insights.

---

## 5. References

- [Databricks Documentation](https://docs.databricks.com/)
- [Apache Spark SQL Guide](https://spark.apache.org/docs/latest/sql-programming-guide.html)
- [Cloud Storage Integration](https://docs.databricks.com/dbfs/mounts.html)

---
