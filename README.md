# Early-Stage Diabetes Risk Prediction

A group project for the **Data Mining and Visualization** course at **BINUS University**, academic year **2024/2025**.

This project explores the Early Stage Diabetes Risk Prediction dataset through data visualization and builds a logistic regression model to predict its positive and negative classes.

## Dataset

The project uses the **Early Stage Diabetes Risk Prediction dataset**, identified in the report as originating from the UCI Machine Learning Repository.

The supplied dataset contains:

- **520 records**
- **16 predictor variables**, including age, gender, and reported symptoms
- A target variable, `class`, containing **320 positive** and **200 negative** records

## Analysis and Modeling

- Inspect the dataset structure and summary statistics.
- Visualize age distribution using a histogram.
- Compare class counts using a bar chart.
- Explore age distributions by class using a box plot.
- Create a correlation heatmap for age, gender, sudden weight loss, weakness, and visual blurring.
- Build a logistic regression model using an **80% training and 20% testing split**, with a random seed of `123`.
- Classify predicted probabilities using a threshold of `0.5`.
- Evaluate predictions using a confusion matrix, ROC analysis, and AUC calculation.

## Tools

- **R**
- **RStudio and Google Colab**
- **tidyverse**, including `ggplot2`
- **corrplot**
- **caret**
- **pROC**

The visualization notebook contains R code.

## Reported Results

The project report presents the following model performance:

| Metric | Result |
| --- | --- |
| Accuracy | 91.35% |
| Balanced accuracy | 90.86% |
| Sensitivity | 92.54
