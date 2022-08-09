create or replace table `big-query-study-338516.model_predictions.shut_up_and_calculate_model_balanced_100percent_processed_3_run1_ON_test_data_processed_3` AS
SELECT
  *
FROM
  ML.PREDICT(MODEL `big-query-study-338516.amex_models.shut_up_and_calculate_model_balanced_100percent_processed_3_run1`,
    (
    SELECT
      *
    FROM
      `big-query-study-338516.kaggle_amex_dataset.test_data_processed_3`
    ));


create or replace table `big-query-study-338516.model_predictions.shut_up_and_calculate_model_balanced_100percent_processed_3_run1_ON_test_data_processed_3_forkaggle` as 
select 
  customer_ID, 
  CASE 
    WHEN predicted_target = 0 and target_score < 0.61 THEN target_score
    WHEN predicted_target = 0 and target_score > 0.61 THEN 1 - target_score
    WHEN predicted_target = 1 and target_score < 0.61 THEN 1 - target_score
    WHEN predicted_target = 1 and target_score > 0.61 THEN target_score
  END as prediction
from (
select 
customer_ID, predicted_target,
MAX(prob) as target_score
from (
  select 
  customer_ID,
  pd.prob,
  predicted_target
  from 
  `big-query-study-338516.model_predictions.shut_up_and_calculate_model_balanced_100percent_processed_3_run1_ON_test_data_processed_3`, unnest(predicted_target_probs) as pd
) group by customer_ID, predicted_target
)
;