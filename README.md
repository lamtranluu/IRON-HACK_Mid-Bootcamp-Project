![Header](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project/blob/main/Images/Watercolor%20Sky%20Photo%20Google%20Classroom%20Header%20(1).png)

Hello there <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="25px"> 
* We are team **Lamarckists**: 👨🏽[Marc Soler](https://github.com/mrpotato2012)  & 👩🏻 [Lam Luu](https://github.com/lamtranluu) with the **Housing Price Regression Case Study.**

## 📖 Table of Contents:
* [Scenario](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project#-scenario-)
* [Objectives](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project#-objectives-)
* [Tools & Process](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project#-tools-)
* [Outcomes](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project#-outcomes-) 
* [Key take aways](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project#-keystakeaway-) 

## 👀 Scenario 
<img src="https://media.giphy.com/media/TGR2xO6HopOhraWYDo/giphy.gif" width="80px">

- We're Data Analysts hired by a Real Estate company.  
- We're set to build a **machine learning model to predict the selling prices of houses** based on a variety of features on which the value of the house is evaluated.
- The company has also demanded us to explore the characteristics of the houses using some business intelligence tools. In particular, they're interested in understanding which factors are responsible for higher property value - $650K and above.
- [Data Source](https://github.com/ironhack-edu/data_mid_bootcamp_project_regression)
- [Project guidelines](https://github.com/ironhack-edu/data_mid_bootcamp_project_regression)

## 🎯 Objectives 
**1. Building a model that will predict the price of a house based on features provided in the dataset (R2 score objective: 0,9).**

**2. Visualizing the features that have an impact on properties with high value - $650K and above.**
## ⚙️ Tools:
 ![](https://img.shields.io/badge/Tableau-Visualization-informational?style=flat&logo=tableau&logoColor=white&color=2bbc8a)
 ![](https://img.shields.io/badge/Python-Code-informational?style=flat&logo=python&logoColor=white&color=2dbc8a)
 ![](https://img.shields.io/badge/MySQL-Query-informational?style=flat&logo=mysql&logoColor=white&color=2bbc8a)
 
## ⚙️ Process:
 1. **Setting up our working environment**: Trello & Github repository
 
 2. **Business Understanding**:
 - Identifying the Real Estate company's requests
 - Understanding the meaning of each variable in the Real Estate context
 - Designing an efficient, realistic timeline to adhere to
 
 3. **Data Exploration**: 
 - Performing preliminary Data Cleaning to prepare the data for the SQL & Tableau tasks
 - [SQL](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project/tree/main/SQL)
 - [Tableau tasks](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project/tree/main/Tableau)
 - Visualization in Jupyter Notebook
 
 4. **Data Preparation**:
 - Implementing thorough Data Cleaning
 - Feature Engineering/Extraction before the Modeling stage
 - Feature Selection was performed in the Modeling stage
 - Different data preprocessing methods have been implemented in the different Modeling iterations
 
 5. **Data Modeling**:
 - **9** different models implemented in **7** different iterations:
    - Linear regression
    - Lasso regression
    - Support vector machine
    - Decision trees regression
    - Random forest regression
    - K Neighbors regression
    - Gradient boosting regression
    - Kernel ridge regression
    - Bayesian ridge regression
 - Optimal hyperparameters were found for the Gradient Boosting model
 

## 📌 Outcomes:  
 - Fully interactive Tableau [dashboard](https://public.tableau.com/app/profile/marcsoler/viz/RealEstateReportMid-BootcampProject/RealEstate) containing:  
 
     - A complete report on the high-end housing market in King County, WA.
     ![](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project/blob/main/Images/tableau1.png)
     ![](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project/blob/main/Images/tableau2.png)
     - A useful widget for real estate buyers to help them find their ideal property.
     ![](https://github.com/lamtranluu/IRON-HACK_Mid-Bootcamp-Project/blob/main/Images/tableau3.png)
 
 - A Gradient Boosting Regression model with an R2 score of 0.89 and a RMSE of 117630 after trying 9 models in 7 different iterations:
  ![]()
 
## ‼️ Key Take Aways
 - We delivered a fully functional model that, given data on the same features it was trained on, can predict the price of a property in King County, WA, within a margin of error of $117k.
 
 - The most important variables to predict the price of Real Estate in King County, WA, are the grade of the building, its location (especially the latitude), the living area, the number of bathrooms, the period in which it was built, whether it is at the waterfront or not and the views it has.
 
 - Negative Root Mean Square Error is the way to go in terms of metrics when it comes to hyperparameter optimization or feature selection.
 
 - Having other variables such as the orientation of the property or its proximity to certain landmarks or convenient services would be useful.
 
 - Feature extraction can be applied almost infinitely.
