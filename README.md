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
| Sensitivity | 92.54% |
| Specificity | 89.19% |

These values are taken from the submitted report and have not been independently reproduced.

## Project Files

| File | Description |
| --- | --- |
| `diabetes_data.csv` | Dataset used for analysis |
| `AOL_GraphVisualization.ipynb` | R notebook containing the histogram, bar chart, and box plot |
| `Code_test.R` | Data inspection, correlation analysis, logistic regression, and evaluation code |
| `AOL_DMV_Group3.docx` | Project report in Word format |
| `AOL_DMV_Group3.pdf` | Project report in PDF format |

## Usage Notes

Open the notebook with an R kernel and place `diabetes_data.csv` in its working directory. For `Code_test.R`, select the dataset when prompted by `file.choose()`.

The R script contains a typo in the model summary line. Replace:

```r
summary(Logistric_Regression_Model)
```

with:

```r
summary(Logistic_Regression_Model)
```

before running the script from start to finish.

## Authors

**Group 3 — Class LA06**  
Computer Science and Statistics, BINUS University

- Amanda Sugito — 2702388433
- Anthony — 2702377612
- Hazel Zaki Adityo — 2702329576
- Marcell Prasetyo — 2702229895
- Satya Darma Padmakumara — 2702244662
- Vanessa Santoso — 2702242171
