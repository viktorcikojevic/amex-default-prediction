create or replace table `big-query-study-338516.kaggle_amex_dataset.processed_6` AS 
with t1 as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_53_max > 1 -- 3624
),
t1_neg  as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_53_max < 1 limit 3624 -- 3624
),

t2 as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_53_growth > 0.25 -- 989
),
t2_neg  as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_53_growth < 0.25 limit 989
),

t3 as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_65_growth > 1.5 -- 188
),
t3_neg  as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_65_growth < 1.5 limit 188
),


t4 as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_71_growth > 0.3 -- 63
),
t4_neg  as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_71_growth < 0.3 limit 63
),


t5 as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_84_growth > 1 -- 63
),
t5_neg  as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_84_growth < 1 limit 55
),

t6 as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_53_avg > 0.5 -- 63
),
t6_neg  as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_53_avg < 0.5 limit 4056
),

t7 as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_70_avg > 1 -- 63
),
t7_neg  as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where D_70_avg < 1 limit 2810
),

t8 as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where B_21_avg > 5 -- 63
),
t8_neg  as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  where B_21_avg < 5 limit 1004
),

t9 as (
  SELECT * FROM `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_4_fortraining`
  limit 50000
)
select * from t1 
union all
select * from t1_neg
union all
select * from t2
union all
select * from t2_neg
union all
select * from t3
union all
select * from t3_neg
union all
select * from t4
union all
select * from t4_neg
union all
select * from t5
union all
select * from t5_neg
union all
select * from t6
union all
select * from t6_neg
union all
select * from t7
union all
select * from t7_neg
union all
select * from t8
union all
select * from t8_neg
union all
select * from t9
;