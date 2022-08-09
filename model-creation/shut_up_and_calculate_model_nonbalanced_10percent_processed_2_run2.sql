

CREATE OR REPLACE MODEL
  `big-query-study-338516.amex_models.shut_up_and_calculate_model_nonbalanced_10percent_processed_2_run2`
OPTIONS (model_type='BOOSTED_TREE_CLASSIFIER',
BOOSTER_TYPE = "GBTREE",
  MAX_ITERATIONS = 200,
    DATA_SPLIT_METHOD = "RANDOM",
    labels = ['target']) AS
  select * EXCEPT( 
  D_87_growth, D_87_avg, D_87_stddev, D_87_min, D_87_max,
  D_88_growth, D_88_avg, D_88_stddev, D_88_min, D_88_max) from `big-query-study-338516.kaggle_amex_dataset.train_data_labels_10percent_processed_2`;