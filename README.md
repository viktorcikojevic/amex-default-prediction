# AMEX default prediction

This is a repo for the Kaggle AMEX default prediction competition: https://www.kaggle.com/competitions/amex-default-prediction

I've analyzed the dataset and wrote models in BigQuery, so most of the work is done in SQL.

## Folder structure

- In the folder [preprocess-data](preprocess-data), I write queries to process the data.
- In the folder [model-creation](model-creation), I write queries that generate XGBoost models using BigQuery ML
- In the folder [model-predictions](model-predictions), I write queries that make predictions of models