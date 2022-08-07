CREATE OR REPLACE MODEL 
    `big-query-study-338516.amex_models.shut_up_and_calculate_model_nonbalanced_100percent_processed_8_run1`
OPTIONS (model_type='BOOSTED_TREE_CLASSIFIER',
    BOOSTER_TYPE = "DART",
    NUM_PARALLEL_TREE = 3,
    DART_NORMALIZE_TYPE = "FOREST",
    MAX_TREE_DEPTH = 10,
    MAX_ITERATIONS = 50,
    L1_REG = 0.5,
    L2_REG = 1.0,
    DATA_SPLIT_METHOD = "CUSTOM",
    DATA_SPLIT_COL = "evaluation", -- https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create-boosted-tree#data_split_col:~:text=SPLIT_COL-,Syntax,for%20DATA_SPLIT_EVAL_FRACTION.%20The%20first%20rows%20are%20used%20as%20training%20data.,-ENABLE_GLOBAL
    labels = ['target']) AS
select * EXCEPT( customer_ID,
  D_87_growth, D_87_avg, D_87_stddev, D_87_min, D_87_max,
  D_88_growth, D_88_avg, D_88_stddev, D_88_min, D_88_max) 
  from 
  `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_8_fortraining`;



CREATE OR REPLACE MODEL 
    `big-query-study-338516.amex_models.shut_up_and_calculate_model_nonbalanced_100percent_processed_8_run2`
OPTIONS (model_type='BOOSTED_TREE_CLASSIFIER',
    BOOSTER_TYPE = "GBTREE",
    MAX_ITERATIONS = 50,
    DATA_SPLIT_METHOD = "CUSTOM",
    DATA_SPLIT_COL = "evaluation", -- https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create-boosted-tree#data_split_col:~:text=SPLIT_COL-,Syntax,for%20DATA_SPLIT_EVAL_FRACTION.%20The%20first%20rows%20are%20used%20as%20training%20data.,-ENABLE_GLOBAL
    labels = ['target']) AS
select * EXCEPT( customer_ID,
  D_87_growth, D_87_avg, D_87_stddev, D_87_min, D_87_max,
  D_88_growth, D_88_avg, D_88_stddev, D_88_max) 
  from 
  `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_8_fortraining`;


CREATE OR REPLACE MODEL 
    `big-query-study-338516.amex_models.shut_up_and_calculate_model_nonbalanced_100percent_processed_8_run3`
OPTIONS (model_type='BOOSTED_TREE_CLASSIFIER',
    BOOSTER_TYPE = "GBTREE",
    MAX_ITERATIONS = 50,
    DATA_SPLIT_METHOD = "CUSTOM",
    MIN_REL_PROGRESS=0.001,
    DATA_SPLIT_COL = "evaluation", -- https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create-boosted-tree#data_split_col:~:text=SPLIT_COL-,Syntax,for%20DATA_SPLIT_EVAL_FRACTION.%20The%20first%20rows%20are%20used%20as%20training%20data.,-ENABLE_GLOBAL
    labels = ['target']) AS
select 
  customer_ID, evaluation, target,
P_2_last_value,
B_1_last_value,
B_9_last_value,
D_44_max,
R_2_last_value,
R_1_last_value,
D_48_last_value,
B_2_last_value,
D_39_last_value,
B_4_growth
 from `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_8_fortraining`;


CREATE OR REPLACE MODEL 
    `big-query-study-338516.amex_models.shut_up_and_calculate_model_nonbalanced_100percent_processed_8_run4`
OPTIONS (model_type='BOOSTED_TREE_CLASSIFIER',
    BOOSTER_TYPE = "GBTREE",
    MAX_ITERATIONS = 50,
    DATA_SPLIT_METHOD = "CUSTOM",
    MIN_REL_PROGRESS=0.001,
    DATA_SPLIT_COL = "evaluation", -- https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create-boosted-tree#data_split_col:~:text=SPLIT_COL-,Syntax,for%20DATA_SPLIT_EVAL_FRACTION.%20The%20first%20rows%20are%20used%20as%20training%20data.,-ENABLE_GLOBAL
    labels = ['target']) AS
select 
  customer_ID, evaluation, target,
P_2_last_value,
B_1_last_value,
B_9_last_value,
D_44_max,
R_2_last_value,
R_1_last_value,
D_48_last_value,
B_2_last_value,
D_39_last_value,
B_4_growth,
D_42_max,
B_11_last_value,
D_41_growth,
D_45_max,
D_42_min,
D_42_avg,
D_44_growth,
B_3_growth,
D_64_last_value,
D_44_last_value,
D_66_last_value,
B_3_last_value,
S_3_avg,
R_3_avg,
B_3_growth_max,
D_43_avg,
B_7_last_value,
D_41_last_value,
S_3_last_value,
S_3_min
 from `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_8_fortraining`;




CREATE OR REPLACE MODEL 
    `big-query-study-338516.amex_models.shut_up_and_calculate_model_nonbalanced_100percent_processed_8_run5`
OPTIONS (model_type='BOOSTED_TREE_CLASSIFIER',
    BOOSTER_TYPE = "GBTREE",
    NUM_PARALLEL_TREE = 100,
    MAX_ITERATIONS = 50,
    DATA_SPLIT_METHOD = "CUSTOM",
    DATA_SPLIT_COL = "evaluation", -- https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create-boosted-tree#data_split_col:~:text=SPLIT_COL-,Syntax,for%20DATA_SPLIT_EVAL_FRACTION.%20The%20first%20rows%20are%20used%20as%20training%20data.,-ENABLE_GLOBAL
    labels = ['target']) AS
select * EXCEPT(customer_ID, D_63_last_value, D_64_last_value) 
  from 
  `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_8_fortraining`;




CREATE OR REPLACE MODEL 
    `big-query-study-338516.amex_models.shut_up_and_calculate_model_nonbalanced_100percent_processed_8_run6`
OPTIONS (model_type='BOOSTED_TREE_CLASSIFIER',
    BOOSTER_TYPE = "GBTREE",
    NUM_PARALLEL_TREE = 150,
    MAX_TREE_DEPTH=9,
    MAX_ITERATIONS = 50,
    DATA_SPLIT_METHOD = "CUSTOM",
    DATA_SPLIT_COL = "evaluation", -- https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create-boosted-tree#data_split_col:~:text=SPLIT_COL-,Syntax,for%20DATA_SPLIT_EVAL_FRACTION.%20The%20first%20rows%20are%20used%20as%20training%20data.,-ENABLE_GLOBAL
    labels = ['target']) AS
select * EXCEPT( customer_ID,
  D_87_growth, D_87_avg, D_87_stddev, D_87_min, D_87_max,
  D_88_growth, D_88_avg, D_88_stddev, D_88_max) 
  from 
  `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_8_fortraining`;