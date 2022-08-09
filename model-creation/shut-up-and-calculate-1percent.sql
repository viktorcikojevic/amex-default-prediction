CREATE OR REPLACE MODEL
  `big-query-study-338516.amex_models.shut_up_and_calculate_model_1percent`
OPTIONS (model_type='BOOSTED_TREE_CLASSIFIER',
BOOSTER_TYPE = "GBTREE",
  MAX_ITERATIONS = 50,
    num_parallel_tree = 6,
    max_tree_depth = 10,
    DATA_SPLIT_METHOD = "RANDOM",
    labels = ['target']) AS
  select * EXCEPT(customer_ID, D_87) from `big-query-study-338516.kaggle_amex_dataset.train_data_labels_balanced_1percent`;
