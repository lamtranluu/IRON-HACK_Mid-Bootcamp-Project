# Feature Selection:
- Based on the heat map correlation matrix: Understand which features are more correlated to the target variable

# Data Modeling:
- Run baseline model: Linear Regression with all original variables (exclude new features) under 2 experiments. Experiment 1: Run the model with m2_living, m2_total, and (m2_living15 , m2_total15) to decide which variable affects more to the target variable. <m2_living15 & m2_total 15  the better results>_ R2 baseline15: 0.687612930688966
- Create a function to run 7 different models to predict the target variable.

### First round: Iteration 1:
- Choose: bedrooms', 'bathrooms', 'floors', 'waterfront', 'view', 'grade', 'm2_basement', 'yr_renovated', 'm2_living15', 'lat' to train the model
- The best model is Gradient boosting regression: 0.76

### Second round: Iteration 2:
- Choose all the variables (exclude new features from Features Engineering/Extraction), use the original data type
- The best model  is Gradient boosting regression: 0.86

### Third round: Iteration 3:
- Keep all variables from round 2 and apply Feature Scaling: Standard Scaler
- The best model is Gradient Boosting Regression: 0.86 ( a bit improved compared to the second round)

### Fourth round: Iteration 4:
- Including all the categorical features and use Robust Scaler for numerical variables and the One Hot Encoder for the categorical ones.
- The best model is Gradient Boosting Regression:  0.865, other model showed a lower rate in this attempt

### Fifth round: Iteration 5:
- Transform some variables as categorical, encode them with OneHotEncoder and use Dense Transformer to make it dense for Random Forest, it aims to avoid a sparse matrix. For the remaining numerical variables, use StandardScaler. 
- The best model is Gradient Boosting Regression: 0.863, which also increased the accuracy of models such as Kernel Ridge or Bayesian Ridge.

### Sixth round: Iteration 6:
- Transform categorical variable into numerical (use Robust Scaler) since we obtained a bit lower accuracy from round 4,5 with categorical type. 
- The best model is still Gradient Boosting Regression : 0.865 (it seems Standard Scaler is better than Robust Scaler
Before running The round seventh, search for the best hyperparams to optimize Gradient Boosting Regressor

### Seventh round: Iteration 7:
- Using numerical variables with Standard Scaler, 
- The best model is Gradient Boosting Regressor  0.895

### Model Evaluation
- Evaluate model with R2 & RMSE 

### Feature Selections with Lasso regression & Gradient Boost regression
- Lasso Regression: return the most important variables in the folowing order: bedrooms', 'bathrooms', 'm2_living', 'm2_total', 'floors', 'waterfront', 'view', 'condition', 'grade', 'm2_above','m2_basement', 'yr_built', 'yr_renovated', 'zipcode', 'lat',
- Gradient Boost Regression return grade, lat, m2_above, long, bathroom, year_built
