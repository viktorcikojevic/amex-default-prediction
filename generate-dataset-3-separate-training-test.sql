create or replace table `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_3_fortraining` as
select *,
CASE WHEN RAND() < 0.9 THEN FALSE ELSE TRUE END as evaluation
from `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_3_balanced`;
