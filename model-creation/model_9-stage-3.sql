CREATE OR REPLACE TABLE `big-query-study-338516.model_9_phase_3.combined_prediction`
AS
 select 
 sector_0_predictions.customer_ID,
 sector_0_predictions.target,
 sector_0_predictions.evaluation,
 sector_0_predictions.predicted_target_sector_0,
 sector_0_predictions.target_score_sector_0,
 sector_1_predictions.predicted_target_sector_1,
 sector_1_predictions.target_score_sector_1,
 sector_2_predictions.predicted_target_sector_2,
 sector_2_predictions.target_score_sector_2,
 sector_3_predictions.predicted_target_sector_3,
 sector_3_predictions.target_score_sector_3,
 sector_4_predictions.predicted_target_sector_4,
 sector_4_predictions.target_score_sector_4,
 sector_5_predictions.predicted_target_sector_5,
 sector_5_predictions.target_score_sector_5,
 sector_6_predictions.predicted_target_sector_6,
 sector_6_predictions.target_score_sector_6,
 sector_7_predictions.predicted_target_sector_7,
 sector_7_predictions.target_score_sector_7,
 sector_8_predictions.predicted_target_sector_8,
 sector_8_predictions.target_score_sector_8,
 sector_9_predictions.predicted_target_sector_9,
 sector_9_predictions.target_score_sector_9,
 sector_10_predictions.predicted_target_sector_10,
 sector_10_predictions.target_score_sector_10,
 sector_11_predictions.predicted_target_sector_11,
 sector_11_predictions.target_score_sector_11,
 sector_12_predictions.predicted_target_sector_12,
 sector_12_predictions.target_score_sector_12,
 sector_13_predictions.predicted_target_sector_13,
 sector_13_predictions.target_score_sector_13,
 sector_14_predictions.predicted_target_sector_14,
 sector_14_predictions.target_score_sector_14,
 sector_15_predictions.predicted_target_sector_15,
 sector_15_predictions.target_score_sector_15,
 sector_16_predictions.predicted_target_sector_16,
 sector_16_predictions.target_score_sector_16,
 sector_17_predictions.predicted_target_sector_17,
 sector_17_predictions.target_score_sector_17,
 sector_18_predictions.predicted_target_sector_18,
 sector_18_predictions.target_score_sector_18,
 sector_19_predictions.predicted_target_sector_19,
 sector_19_predictions.target_score_sector_19,
  from
 (select customer_ID, predicted_target as predicted_target_sector_0, target, evaluation, MAX(prob) as target_score_sector_0 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_0_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_0_predictions
 left join
 (select customer_ID, predicted_target as predicted_target_sector_1, target, evaluation, MAX(prob) as target_score_sector_1 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_1_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_1_predictions
 on sector_1_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_2, target, evaluation, MAX(prob) as target_score_sector_2 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_2_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_2_predictions
 on sector_2_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_3, target, evaluation, MAX(prob) as target_score_sector_3 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_3_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_3_predictions
 on sector_3_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_4, target, evaluation, MAX(prob) as target_score_sector_4 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_4_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_4_predictions
 on sector_4_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_5, target, evaluation, MAX(prob) as target_score_sector_5 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_5_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_5_predictions
 on sector_5_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_6, target, evaluation, MAX(prob) as target_score_sector_6 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_6_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_6_predictions
 on sector_6_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_7, target, evaluation, MAX(prob) as target_score_sector_7 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_7_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_7_predictions
 on sector_7_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_8, target, evaluation, MAX(prob) as target_score_sector_8 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_8_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_8_predictions
 on sector_8_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_9, target, evaluation, MAX(prob) as target_score_sector_9 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_9_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_9_predictions
 on sector_9_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_10, target, evaluation, MAX(prob) as target_score_sector_10 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_10_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_10_predictions
 on sector_10_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_11, target, evaluation, MAX(prob) as target_score_sector_11 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_11_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_11_predictions
 on sector_11_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_12, target, evaluation, MAX(prob) as target_score_sector_12 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_12_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_12_predictions
 on sector_12_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_13, target, evaluation, MAX(prob) as target_score_sector_13 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_13_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_13_predictions
 on sector_13_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_14, target, evaluation, MAX(prob) as target_score_sector_14 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_14_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_14_predictions
 on sector_14_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_15, target, evaluation, MAX(prob) as target_score_sector_15 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_15_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_15_predictions
 on sector_15_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_16, target, evaluation, MAX(prob) as target_score_sector_16 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_16_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_16_predictions
 on sector_16_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_17, target, evaluation, MAX(prob) as target_score_sector_17 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_17_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_17_predictions
 on sector_17_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_18, target, evaluation, MAX(prob) as target_score_sector_18 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_18_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_18_predictions
 on sector_18_predictions.customer_ID = sector_0_predictions.customer_ID
 left join
 (select customer_ID, predicted_target as predicted_target_sector_19, target, evaluation, MAX(prob) as target_score_sector_19 from (select customer_ID, target, predicted_target, evaluation, pd.prob from `big-query-study-338516.model_9_phase_2.sector_19_predictions`, unnest(predicted_target_probs) as pd) group by customer_ID, predicted_target, target, evaluation) sector_19_predictions
 on sector_19_predictions.customer_ID = sector_0_predictions.customer_ID
;
 