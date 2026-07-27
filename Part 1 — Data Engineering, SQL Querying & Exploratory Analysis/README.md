# Heart Disease Prediction using Machine Learning

## Part 1 – Data Engineering, SQL Querying & Exploratory Analysis

## Project Overview

This project is submitted as **Part 1** of the Capstone Project. The objective is to transform a raw healthcare dataset into a clean, reliable, and analysis-ready dataset using Python and SQL. The project demonstrates the complete data engineering workflow, including data cleaning, preprocessing, SQL querying, exploratory data analysis (EDA), and documentation of insights.

---

# Dataset Information

| Item               | Details                             |
| ------------------ | ----------------------------------- |
| Dataset            | UCI Cleveland Heart Disease Dataset |
| Source             | UCI Machine Learning Repository     |
| Number of Records  | 303                                 |
| Number of Features | 14                                  |
| Prediction Target  | `target`                            |

The dataset contains demographic and clinical information of patients and is commonly used for heart disease prediction.

---

# Tools and Technologies

* Python
* Pandas
* NumPy
* SQLite (sqlite3)
* SQL
* Matplotlib
* Seaborn
* Jupyter Notebook

---

# Project Workflow

## 1. Data Loading

The dataset was loaded into a Pandas DataFrame using `pd.read_csv()`.

The following methods were used to understand the dataset:

* `shape()` – Verified the number of rows and columns.
* `info()` – Examined data types and missing values.
* `describe()` – Generated descriptive statistics for numerical features.

---

## 2. Initial Data Assessment

### Dataset Size

* **Rows:** 303
* **Columns:** 14

### Missing Value Assessment

Missing values were identified using:

```python
df.isnull().sum()
```

The dataset contained missing values only in the following columns.

| Column | Missing Values | Percentage | Decision          | Justification                                                                                                                                      |
| ------ | -------------: | ---------: | ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| ca     |              4 |      1.32% | Median Imputation | Since the missing values were less than 10% of the dataset, the median was used to preserve the distribution while avoiding unnecessary data loss. |
| thal   |              2 |      0.66% | Mode Imputation   | As this is a categorical feature and missing values were less than 10%, the mode was used to replace the missing entries.                          |

**Summary**

The dataset contained only **6 missing values** in total (approximately **1.98%** of the dataset). According to the assignment requirements, columns with less than 10% missing values should be imputed rather than dropped.

---

## 3. Data Type Assessment

The dataset structure was examined using `df.info()`.

Two columns were identified with incorrect logical data types.

| Column | Original Type | Expected Type | Reason                                                                              |
| ------ | ------------- | ------------- | ----------------------------------------------------------------------------------- |
| ca     | object        | Integer       | Missing values represented as `"?"` caused Pandas to treat the column as an object. |
| thal   | object        | Integer       | Missing values represented as `"?"` caused Pandas to treat the column as an object. |

### Data Type Correction

The `"?"` values were converted to `NaN` while importing the dataset using the `na_values="?"` parameter.

After handling the missing values:

* `ca` was converted to an integer data type.
* `thal` was converted to an integer data type.

This ensured all variables had appropriate data types for analysis.

---

## 4. Duplicate Record Check

Duplicate records were checked using:

```python
df.duplicated().sum()
```

**Result**

No duplicate records were found.

**Decision**

No rows were removed because the dataset did not contain duplicate observations.

---

## 5. Outlier Detection

Outliers were detected using the **Interquartile Range (IQR)** method.

The following numerical columns were analyzed:

* `trestbps` (Resting Blood Pressure)
* `chol` (Serum Cholesterol)

### Strategy Used

Instead of removing outliers, they were **capped using the IQR boundaries**.

### Justification

Capping preserves valuable patient records while reducing the influence of extreme observations on statistical analysis and future machine learning models.

---

# Data Cleaning Summary

| Task                 | Action Taken                                       |
| -------------------- | -------------------------------------------------- |
| Missing Values       | `ca` filled using Median, `thal` filled using Mode |
| Incorrect Data Types | `ca` and `thal` converted from Object to Integer   |
| Duplicate Records    | Checked and none found                             |
| Outliers             | Detected using IQR and handled using Capping       |

The cleaned dataset was exported as:

```text
cleaned_heart.csv
```

---

# SQL Analysis

The cleaned dataset was imported into a local SQLite database.

The project includes SQL queries covering:

* WHERE clause
* GROUP BY with aggregate functions
* HAVING clause
* ORDER BY with LIMIT
* Multiple WHERE conditions using AND / OR
* Additional analytical query

All SQL queries are available in:

* `queries.sql`

or within the Jupyter Notebook.

The output of every SQL query is displayed in the notebook.

---

# Exploratory Data Analysis

The notebook contains the following visualizations:

* Box Plot (Outlier Detection)
* Histogram (Age Distribution)
* Bar Chart (Target Class Distribution)
* Scatter Plot (Age vs Cholesterol)
* GroupBy Aggregation Chart

Every visualization contains:

* Title
* X-axis label
* Y-axis label

---

# Key Insights

* The dataset consists of **303 patient records** and **14 clinical attributes**.
* Only **6 missing values** were present (**4 in `ca` and 2 in `thal`**), representing less than **2%** of the dataset.
* The **`ca`** column was imputed using the **median**, while **`thal`** was imputed using the **mode**, following the assignment guidelines.
* The **`ca`** and **`thal`** columns were originally stored as object data types due to `"?"` values and were successfully converted to numeric types.
* No duplicate records were identified.
* Outliers were detected in **trestbps** and **chol** using the IQR method and handled through capping.
* The cleaned dataset is suitable for SQL analysis, visualization, and predictive modeling.

---

# Repository Structure

```text
Heart-Disease-Part1/
│
├── data/
│   └── processed.cleveland.data
│
├── notebook/
│   └── Part1_Data_Engineering.ipynb
│
├── cleaned_data/
│   └── cleaned_heart.csv
│
├── queries.sql
├── requirements.txt
└── README.md
```

---

# Installation

Install the required libraries using:

```bash
pip install -r requirements.txt
```

---

# How to Run the Project

1. Clone the GitHub repository.
2. Install the required dependencies.
3. Open the Jupyter Notebook.
4. Run all notebook cells from top to bottom.
5. The notebook will automatically perform data cleaning, SQL analysis, generate visualizations, and display all outputs.

---

# AI Assistance Disclosure

This project was completed independently by me.

To support my learning process, I used the following resources only as reference materials.

### ChatGPT (OpenAI)

Used to:

* Understand the assignment requirements.
* Clarify Python, Pandas, SQL, and scikit-learn syntax.
* Understand and coding errors.
* Improve the structure, grammar, and formatting of the project documentation and README.

### Google Search

Used to:

* Refer to official examples and implementation approaches.
* Understand error messages and debugging techniques.
* Cross-check library usage when required.

### Official Documentation

The following official documentation was used as technical reference:

* Python Documentation
* Pandas Documentation
* NumPy Documentation
* Matplotlib Documentation
* Seaborn Documentation
* SQLite Documentation

All code implementation, data cleaning decisions, SQL queries, visualizations, analysis, interpretations, and conclusions were completed by me after understanding the concepts from these reference resources.

---

# Conclusion

This project successfully transformed the raw UCI Cleveland Heart Disease dataset into a clean, structured, and analysis-ready dataset. All data quality issues were identified and addressed according to the assignment requirements. The project demonstrates practical skills in data preprocessing, SQL querying, exploratory data analysis, and technical documentation, providing a strong foundation for the predictive modeling stage of the capstone project.
