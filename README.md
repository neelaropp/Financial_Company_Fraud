
Project Overview

This project aims to detect fraudulent transactions within financial data using a combination of SQL, Python, and Machine Learning. We leveraged SQL for data retrieval and preprocessing, Python for data manipulation and visualization, and machine learning models to classify transactions as fraudulent or non-fraudulent.


Problem Statement

Fraudulent transactions pose a significant financial risk to businesses. The objective of this project was to identify potential fraud in transaction records using machine learning techniques. By analyzing patterns in transaction data, we aimed to enhance fraud prevention efforts and improve decision making processes within the company.

Technologies Used

My SQL Workbench: To store and retrieve structured transaction data efficiently.

Python (Pandas, NumPy, Matplotlib, Seaborn): For data cleaning, visualization, and analysis.

Machine Learning (Scikit-Learn): Implemented multiple ML models to classify fraud, including:

Random Forest

Gradient Boosting

Logistic Regression

Support Vector Machines (SVM)

K-Nearest Neighbors (KNN)

Decision Tree

Naive Bayes

Ridge Classifier

AdaBoost

Neural Network (MLP)


Data Pipeline

Data Loading & Preprocessing:

Extracted transaction records from multiple CSV files.

Stored data in a MySQL database.

Joined tables to create a comprehensive dataset for analysis.

Exploratory Data Analysis (EDA):

Checked for missing values and cleaned the dataset.

Visualized the distribution of fraudulent transactions.

Feature Engineering & Model Training:

Selected relevant features (Amount, Anomaly Score).

Split the dataset into training and testing sets.

Trained multiple machine learning models.

Evaluated models using Accuracy, Precision, Recall, F1 Score, and RMSE.

Model Comparison & Best Model Selection:

Compared models based on all evaluation metrics.

Identified the best-performing model for fraud detection.


Key Findings

The Random Forest Classifier achieved the highest performance across multiple metrics.

Fraudulent transactions were significantly fewer than non-fraudulent ones, leading to class imbalance issues.

Traditional models like Logistic Regression and Decision Trees performed well but were outperformed by ensemble models (Random Forest, Gradient Boosting).

Further improvements can be made using oversampling techniques (SMOTE) or anomaly detection methods.

How These Outputs Can Help

Automated Fraud Detection: Helps businesses flag suspicious transactions in real-time.

Enhanced Security Measures: Reduces financial losses by preventing fraud.

Optimized Business Decisions: Provides insights into fraudulent activity trends, aiding in policy improvements.

Future Improvements

Implement deep learning techniques (LSTMs, Autoencoders) for anomaly detection.

Explore real-time fraud detection with streaming data.

Improve model explainability to provide insights into why transactions are flagged as fraud.
