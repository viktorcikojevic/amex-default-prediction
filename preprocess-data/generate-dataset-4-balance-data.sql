create or replace table `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_balanced` as
with 
zeros as (select * from `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4` where target = 0 limit 118828), 
ones as (select * from `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4` where target = 1 limit 118828)
select * from zeros
UNION ALL
select * from ones;