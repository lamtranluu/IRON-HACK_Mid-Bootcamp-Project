# Exploratory Data Analysis

## 1. Data Cleaning Process:
- Understanding the data. Using pandas profiling report to thoroughly understand each variable of the data set (data types, nulls, max/min value, distributions...)
- Agreeing on the implementation detailed below

### 1.1 Basic Cleaning:
- Performing a basic cleanse for deliverable tasks in SQL & Tableau
- **Bathrooms, Floors:** Rounding up and changing dtype to int
- Standardizing 'date' to desired date_time format
- Changing header names to more meaningful ones
- Converting sq feet to sq m2 (long live the metric system!)

### 1.2 Advanced Cleaning:
- **Waterfront, Condition:** Changing dtype to integer
- **View:** Converting to ranking or int
- **Outliers**: Checks on Bedrooms, m2_total and m2_living. Only the ones in bedrooms were changed into the column's median
- Changing the dtype from integer to object for truly categorical features (number of bedrooms, bathrooms, floors, condition, grade, zip code & view)
- Changing the dtype of waterfront to boolean

### 1.3: Visualizing data:
- Using a heatmap to visualize correlation between features
- Using scatterplots, regplots, joinplots, boxplots & pairgrids to visualize other relevant characteristics

# Feature Engineering / Extraction:
- Extracting the following bins from year_built: "1900-1947", "1947-1965", "1965-1983", "1983-2001", "2001-2015"
- Creating a new categorical feature by scaling the grade rating into 5 levels
- Creating a new boolean feature: renovated (yes/no type)
- Creating a new categorical feature from the basement
- Extracting month and year from 'date_sold'
