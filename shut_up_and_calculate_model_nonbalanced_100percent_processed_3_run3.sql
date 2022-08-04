CREATE OR REPLACE MODEL 
    `big-query-study-338516.amex_models.shut_up_and_calculate_model_nonbalanced_100percent_processed_3_run3`
OPTIONS (model_type='BOOSTED_TREE_CLASSIFIER',
    BOOSTER_TYPE = "DART",
    NUM_PARALLEL_TREE = 2,
    DART_NORMALIZE_TYPE = "FOREST",
    MAX_TREE_DEPTH = 8,
    MAX_ITERATIONS = 50,
    L1_REG = 0.5,
    L2_REG = 1.0,
    ENABLE_GLOBAL_EXPLAIN = TRUE,
    DATA_SPLIT_METHOD = "CUSTOM",
    DATA_SPLIT_COL = "evaluation", -- https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create-boosted-tree#data_split_col:~:text=SPLIT_COL-,Syntax,for%20DATA_SPLIT_EVAL_FRACTION.%20The%20first%20rows%20are%20used%20as%20training%20data.,-ENABLE_GLOBAL
    labels = ['target']) AS
select * EXCEPT( customer_ID,
  D_87_growth, D_87_avg, D_87_stddev, D_87_min, D_87_max,
  D_88_growth, D_88_avg, D_88_stddev, D_88_min, D_88_max) 
  from 
  `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_3_balanced_fortraining`;


