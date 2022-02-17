# Feature Selection:
- Based on the heat map correlation matrix: Understand which features is more correlated to the target variable

# Data Modeling:
- Run baseline model: Linear Regression with all original variables (exclude new features) under 2 experiments. Experiment 1: Run the model with m2_living, m2_total, and (m2_living15 , m2_total15) to decide which variable affects more to the target variable. <m2_living15 & m2_total 15 gived the better results>_ R2 baseline15: 0.687612930688966
- Create a function to run 7 different models to predict the target variable.
### First round: Iteration 1:
- Choose: bedrooms', 'bathrooms', 'floors', 'waterfront', 'view', 'grade', 'm2_basement', 'yr_renovated', 'm2_living15', 'lat' to train the model
- The best model is Gradient boosting regression: 0.76

### Second round: Iteration 2:
- Choose all the variables (exclude new features from Features Engineering/Extraction)
- The best model  is Gradient boosting regression: 0.86



```
Put code here

```
