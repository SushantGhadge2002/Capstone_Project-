# ❤️ Heart Disease Prediction Dashboard

An interactive Streamlit dashboard for exploring the UCI Cleveland Heart Disease Dataset. This project allows users to filter patient records, visualize heart disease statistics, and retrieve live information from an external REST API.

---

## 📌 Project Overview

This dashboard was developed as part of a Data Science Capstone Project.

The objective of this project is to transform a healthcare dataset into an interactive dashboard that can be explored by non-technical users.

Users can:

- Filter patients using interactive controls
- View multiple visualizations
- Explore filtered data in real time
- Access live data from an external REST API

---

## 📂 Dataset

**Dataset Name**

UCI Cleveland Heart Disease Dataset

The dataset contains medical information such as:

- Age
- Sex
- Chest Pain Type
- Resting Blood Pressure
- Cholesterol
- Fasting Blood Sugar
- ECG Results
- Maximum Heart Rate
- Exercise Induced Angina
- ST Depression
- Number of Major Vessels
- Thalassemia
- Heart Disease Status

Target variable:

- **0 → No Heart Disease**
- **1 → Heart Disease**

---

## 🚀 Features

### Interactive Filters

The dashboard includes multiple interactive widgets:

- Age Slider
- Cholesterol Slider
- Resting Blood Pressure Slider
- Exercise-Induced Chest Pain Select Box

All visualizations and the data table update automatically based on these filters.

---

## 📊 Dashboard Visualizations

The dashboard contains four interactive charts:

1. Heart Disease Distribution (Bar Chart)
2. Age Distribution (Histogram)
3. Heart Disease Percentage (Pie Chart)
4. Cholesterol Distribution by Heart Disease Status (Box Plot)

---

## 📋 Live Data Table

A live filtered dataset is displayed using **Streamlit DataFrame**.

The table updates automatically whenever the user changes any filter.

---

# 🌐 External REST API Integration

This project integrates a live REST API using Python's **requests** library.

### API Endpoint

https://jsonplaceholder.typicode.com/posts/1

### Request Type

**GET**

### Fields Displayed

The dashboard displays:

- Post ID
- User ID
- Title

### What does the API return?

The JSONPlaceholder API is a free public REST API that returns sample JSON data for testing and learning REST API integration.

This project performs a **GET request** to retrieve a sample post and displays selected fields inside the Streamlit dashboard.

---

## 🛠 Technologies Used

- Python
- Streamlit
- Pandas
- Matplotlib
- Plotly Express
- Requests
- Scikit-learn

---

## 📁 Project Structure

```
Heart_Disease_Dashboard/
│
├── app.py
├── heart_disease_cleaned.csv
├── requirements.txt
├── README.md
└── screenshots/
```

---

## ⚙ Installation

Clone the repository

```bash
git clone https://github.com/yourusername/Heart_Disease_Dashboard.git
```

Move into the project directory

```bash
cd Heart_Disease_Dashboard
```

Install dependencies

```bash
pip install -r requirements.txt
```

Run the application

```bash
streamlit run app.py
```

---

## 🌍 Live Dashboard

**Streamlit Community Cloud URL**

```
https://heart-disease-app-dashboard-ksuvc48qxy2ap6jtdvdnfe.streamlit.app/
```

Replace the above link with your deployed Streamlit application URL.

---

## 💻 GitHub Repository

```
https://github.com/YOUR_USERNAME/Heart_Disease_Dashboard
```

Replace with your GitHub repository link.

---
# AI Assistance Disclosure

This project was completed independently by me.

To support my learning, I used the following resources only as references.

### ChatGPT (OpenAI)

- Understand Streamlit dashboard requirements.
- Learn Streamlit, Python, and REST API integration.
- Improve the README and project documentation.

### Google Search

- Refer to official documentation and examples.
- Learn debugging techniques.
- Verify library usage and implementation.

### Official Documentation

- Streamlit
- Pandas
- Plotly
- Matplotlib
- Requests

These resources were used only for learning and reference. All coding, testing, and documentation were completed by me.
```
## ✅ Assignment Requirements Covered

✔ Streamlit Dashboard

✔ Interactive Widgets

✔ Live Data Table

✔ Four Interactive Charts

✔ External REST API Integration

✔ GET Request using requests library

✔ Public GitHub Repository

✔ Public Streamlit Deployment

---

## 👨‍💻 Author

**Sushant Ghadge**

M.Sc. Statistics

Aspiring Data Scientist

---

## 📜 License

This project is developed for educational purposes.