# Customer-Behavior-Data-Analyst-Portfolio-Project
This project represents a complete, industry standard, end-to-end data analytics workflow, designed to mirror the real responsibilities of professional analysts in modern business environments. The project encompasses all critical stages of data analysis, from data preparation and modeling to insight generation, visualization, and reporting.

Understanding what drives customer spend and retention is critical for retail strategy. This project builds an analytical pipeline that:

1.Ingests and audits raw customer transaction data in Python.                                                                            
2.Cleans and transforms features (standardizing schema, removing redundant columns, binning age quartiles, and mapping purchase frequency intervals).                                                                                                                    
3.Exports the processed dataset to a relational MySQL database (shopping_behavior).                                                     
4.Answers 9 core business questions using SQL aggregations, Common Table Expressions (CTEs), subqueries, and window functions            (ROW_NUMBER()).

*Repository Structure*                                                                                                                   
├── shopping_behavior_updated.csv      # Raw retail transaction dataset (3,900 rows, 18 columns)                                         
├── project_purchase_behavior.ipynb   # Jupyter/Colab notebook for EDA, cleaning & feature engineering                                  
├── customer.csv                       # Cleaned & transformed dataset exported for SQL ingestion                                        
├── sql.sql                            # MySQL queries answering 9 core business questions                                               
└── README.md                          # Project documentation and analytical report                                                    

<img width="4872" height="2656" alt="image" src="https://github.com/user-attachments/assets/cfbb6c61-433c-4ed1-81ff-244e348049c5" />

*Dataset Summary*
* Total Records: 3,900 unique customer transactions  
* Data Completeness: 0 missing values across all 18 raw columns  
* Total Revenue Generated: $233,081.00
* Average Purchase Value: $59.76 (Range: $20.00 – $100.00)  
* Average Customer Age: 44.07 years (Range: 18 – 70 years)  
* Average Review Rating: 3.75 / 5.00  
* Geographic Coverage: 50 U.S. states

1.Open Customer_Shopping_Behavior_Analysis.ipynb notebook

This file contains:

* Data Import

* Data exploration

* Data cleaning

* Connection to SQL Database

2.Load the data from Python notebook into MySQL/PostgreSQL/MS SQL Server

* Create a database in SQL

* Run Python code to load data into SQL database

* Open customer_behavior_sql_queries.sql

* Answer Business Questions using SQL Queries

3.Connect the SQL Database to Power BI

* Open customer_behavior_dashboard.pbix

* Create interactive dashboard in Power BI

4.Create Project Report and Presentation

* Create project report

* Build presentation deck using Gamma AI

