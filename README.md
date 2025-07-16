
# SQL Data Warehouse Project

Welcome to the **SQL Data Warehouse & Analytics Project**! 🚀

This project demonstrates the development of a modern SQL-based data warehouse using the **Medallion architecture** with Bronze, Silver, and Gold layers. Designed for portfolio and real-world use cases, it includes everything from ETL pipelines to analytics-ready data models.

---

## 🧱 Architecture Overview

The project follows the **Medallion Architecture**:

* **Bronze Layer**: Raw ingested data (from CSV/ERP/CRM).
* **Silver Layer**: Cleaned, joined, and transformed data.
* **Gold Layer**: Star schema optimized for BI and analysis.

![Data Architecture](docs/data_architecture.png)

---

## 🔍 Key Features

* Full ETL pipeline using SQL scripts
* Star schema data modeling (fact + dimension tables)
* Clear folder and modular structure (bronze/silver/gold)
* Suitable for Azure SQL / SQL Server Express / Synapse
* Documented best practices (naming, cataloging, diagrams)

---

## 📦 Project Components

### 1. **Datasets**

* Located in `/datasets/`
* ERP & CRM data in CSV format

### 2. **ETL Scripts**

* Located in `/scripts/`
* `bronze/`: Raw ingestion
* `silver/`: Cleansing + transformations
* `gold/`: Star schema creation

### 3. **Documentation**

* Located in `/docs/`
* ER diagrams, data catalog, naming conventions, and flows

### 4. **Tests**

* Located in `/tests/`
* Includes quality checks, null constraints, PK validations

---

## 🧰 Tools Required

* [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
* [SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
* [Draw.io](https://drawio.app/) (for architecture diagrams)
* Optional: [Azure Synapse](https://azure.microsoft.com/en-us/products/synapse-analytics/) or [Azure Data Studio](https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio)

---

## 🚀 Getting Started

```bash
# Clone this repository
https://github.com/your-username/sql-data-warehouse-project.git

# Open SQL Server Express / SSMS
# Create a new database: DataWarehouse

# Run the scripts in this order:
1. /scripts/bronze/
2. /scripts/silver/
3. /scripts/gold/
```

---

## 📊 Analytics Goals

This warehouse enables analysis on:

* Customer segmentation
* Product performance
* Region-wise revenue trends
* Monthly & yearly growth reports

Reports can be built using:

* Power BI
* Tableau
* Excel Pivot Tables

---

## 📁 Folder Structure

```
sql-data-warehouse-project/
├── datasets/
├── docs/
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_models.drawio
├── scripts/
│   ├── bronze/
│   ├── silver/
│   ├── gold/
├── tests/
├── README.md
├── LICENSE
└── .gitignore
```
---

## 🛡️ License

This project is licensed under the [MIT License](LICENSE).
