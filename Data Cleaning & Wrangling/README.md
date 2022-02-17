# Exploratory Data Analysis
## 1.Data Cleaning Process:
- Understand the data. Look at pandas profiling report to understand the detail of each variable and the data set ( data types, nulls, max/min value, distribution..)
- Agree on the implementation below
### 1.1 Basic Cleaning:
- Create a basic cleaning to have a cleaned data set for further tasks in SQL & Tableau
- **Bathrooms, Floors:** Change to int types, round up all numbers in float types
- Standardize 'date' to date_time format
- Change header name to obtain understandable columns' name
- Convert sq feet to sq m2 (It is more comfortable for us to work with sq m2)
### 1.2 Advanced Cleaning:
- **Waterfront, Condition:** Change to Int
- View: Convert to ranking or int
- **After Check outliers**: Bedrooms, m2_total, m2_living, only reduce outliers in variable bedrooms, 
- Change data type for categorical features (number of bedrooms, bathrooms, floors, condition, grade, zipcode, view)
- Change the data type of variable (waterfront) to boolean

### 1.3: Visualize data:
- Use heatmap to visualize correlation matrix
- Use scatterplot, regplot, joinplot, boxplot, pairgrid.. to visualize these relevant variables

# Feature Engineering/ Extraction:
- Create new feature from year built into 4 periods: 1900-1947", "1947-1965", "1965-1983","1983-2001", "2001-2015"
- Create a new feature from grade rank into 5 rankings ( object type)
- Create a new feature for Renovated (Boolean type)
- Create a new feature for the basement
- Extract month, 'year' from 'date' sold.

                                      




