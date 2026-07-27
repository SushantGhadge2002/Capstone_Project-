# ❤️ Heart Disease Prediction using Machine Learning
## Part 2 – Predictive Modeling Pipeline

---

## Project Overview

This project develops a complete Machine Learning pipeline to predict whether a patient has heart disease using clinical and medical attributes. The pipeline covers data loading, cleaning, preprocessing, feature engineering, model training, evaluation, cross-validation, hyperparameter tuning, and model comparison following machine learning best practices.

---

## Business Question

Can clinical information such as age, sex, chest pain type, cholesterol level, blood pressure, ECG results, and other medical measurements accurately predict whether a patient has heart disease?

A reliable prediction model can help healthcare professionals identify high-risk patients earlier and support timely medical intervention.

---

## Problem Type

**Binary Classification**

Target Classes:

- **0 → No Heart Disease**
- **1 → Heart Disease**

---

# Dataset

**Dataset:** UCI Cleveland Heart Disease Dataset

The original target variable contained five classes:

```
0
1
2
3
4
```

For this project, the target variable was converted into binary classes:

```
0 = No Heart Disease
1 = Heart Disease
```

---

## Features

### Input Features (X)

- age
- sex
- cp
- trestbps
- chol
- fbs
- restecg
- thalach
- exang
- oldpeak
- slope
- ca
- thal

### Target Variable (y)

```
target_binary
```

Where:

- **0 = No Heart Disease**
- **1 = Heart Disease**

For evaluation, **Heart Disease (Class 1)** is considered the positive class.

---

## Data Cleaning

The following preprocessing steps were performed:

- Removed duplicate records
- Handled missing values
- Corrected data types
- Treated outliers where required
- Converted the original target into binary classes
- Prepared the dataset for machine learning

---

## Train-Test Split

To prevent data leakage, the dataset was split before fitting any preprocessing steps.

| Parameter | Value |
|-----------|-------|
| Training Data | 80% |
| Testing Data | 20% |
| Random State | 42 |
| Stratify | target_binary |

---

## Feature Encoding

The dataset already contains categorical features:

- sex
- cp
- fbs
- restecg
- exang
- slope
- thal

### Encoding Technique

**One-Hot Encoding**

These variables represent nominal categories without meaningful numerical ordering. One-Hot Encoding avoids introducing false ordinal relationships.

The encoder was fitted only on the training data and then applied to the testing data.

---

## Feature Scaling

### Scaling Method

**StandardScaler**

Scaling was applied only to numerical features.

The scaler was fitted using the training dataset and then used to transform both training and testing datasets.

---

## Machine Learning Models

The following classification algorithms were trained and evaluated:

1. Logistic Regression
2. Decision Tree Classifier
3. Random Forest Classifier
4. XGBoost Classifier

---

## Evaluation Metrics

The models were evaluated using:

- Accuracy
- Precision
- Recall
- F1 Score
- Confusion Matrix

### Primary Evaluation Metric

**Binary F1 Score**

The Binary F1 Score was selected as the primary evaluation metric because it balances Precision and Recall, making it suitable for medical diagnosis problems where both false positives and false negatives are important.

Positive Class:

```
1 = Heart Disease
```

---

## Class Imbalance

The class distribution was examined before applying any balancing techniques.

Since the minority class represented more than **35%** of the dataset, additional balancing techniques such as **SMOTE** or **Random Oversampling** were not required.

---

## Machine Learning Pipeline

A Scikit-Learn Pipeline was created using:

- ColumnTransformer
- OneHotEncoder
- StandardScaler
- Random Forest Classifier

This ensures that preprocessing is performed correctly within every cross-validation fold while preventing data leakage.

---

## Cross Validation

### Method

**Stratified K-Fold Cross Validation**

| Parameter | Value |
|-----------|-------|
| Number of Folds | 5 |
| Evaluation Metric | Binary F1 Score |

The complete preprocessing pipeline was included inside every cross-validation fold.

---

## Hyperparameter Tuning

### Method

**GridSearchCV**

The following parameters were tuned:

- n_estimators
- max_depth
- min_samples_split

The best model was selected using the highest Binary F1 Score obtained during cross-validation.

---

# Model Comparison

| Rank | Model | Accuracy | Precision | Recall | F1 Score |
|------|----------------------|---------:|----------:|-------:|---------:|
| **1** | **Random Forest** | **0.8333** | **0.8462** | **0.7857** | **0.8148** |
| **2** | **XGBoost** | **0.8167** | **0.8400** | **0.7500** | **0.7925** |
| **3** | **Logistic Regression** | **0.7667** | **0.7917** | **0.6786** | **0.7308** |
| **4** | **Decision Tree** | **0.7167** | **0.7037** | **0.6786** | **0.6909** |

---

# Final Recommendation

Among all the evaluated models, the **Random Forest Classifier** achieved the best overall performance.

It obtained:

- **Accuracy:** **83.33%**
- **Precision:** **84.62%**
- **Recall:** **78.57%**
- **F1 Score:** **81.48%**

The **XGBoost Classifier** ranked second and demonstrated competitive predictive performance, while **Logistic Regression** provided a strong and interpretable baseline model.

The **Decision Tree Classifier** achieved the lowest performance among the evaluated models.

Based on the evaluation metrics, cross-validation results, and hyperparameter tuning, the **Random Forest Classifier** is recommended for deployment in a heart disease prediction system.

---

# Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- XGBoost
- Joblib

---

# Project Structure

```
Heart-Disease-Prediction/
│
├── Part2_HeartDisease.ipynb
├── heart.csv
├── best_model.pkl
├── requirements.txt
├── README.md
└── images/
```

---

# How to Run

### 1. Clone the repository

```bash
git clone <repository-url>
```

### 2. Navigate to the project folder

```bash
cd Heart-Disease-Prediction
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Run the notebook

Open:

```
Part2_HeartDisease.ipynb
```

and execute all cells sequentially.

---

# Results

- Successfully built an end-to-end Machine Learning pipeline.
- Prevented data leakage using Scikit-Learn Pipeline and ColumnTransformer.
- Compared four classification algorithms.
- Performed hyperparameter tuning using GridSearchCV.
- Evaluated models using Accuracy, Precision, Recall, and Binary F1 Score.
- Selected Random Forest as the final deployment model.

---

# AI Assistance Disclosure

This project was completed independently by me.

AI tools and online resources were used only for learning, clarification, and documentation purposes. All data preprocessing, feature engineering, model development, evaluation, hyperparameter tuning, and final implementation were completed by me.

## ChatGPT (OpenAI)

Used to:

- Understand the assignment requirements and evaluation criteria.
- Clarify Python, Pandas, NumPy, Scikit-learn, and XGBoost concepts and syntax.
-  understand debugging approaches.
- Improve the structure, grammar, and formatting of the README and project documentation.

## Google Search

Used to:

- Refer to official documentation for Scikit-learn, XGBoost, Pandas, and NumPy.
- Understand error messages and debugging techniques.
- Cross-check the usage of machine learning functions and library documentation when required.

No AI tool was used to generate the final implementation or complete the project automatically. The final code, analysis, model selection, evaluation, and conclusions are my own work.
# Author

**Sushant Sanjay Ghadge**

- M.Sc. Statistics
- Aspiring Data Scientist
- 2026
