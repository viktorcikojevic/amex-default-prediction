create or replace table `big-query-study-338516.model_9_phase_3.combined_prediction_evaluation_reshuffled` AS
select * except(evaluation),
RAND() < 0.9 AS evaluation
from `big-query-study-338516.model_9_phase_3.combined_prediction`;

CREATE OR REPLACE MODEL
  `big-query-study-338516.model_9_phase_3.model_1` OPTIONS (model_type="BOOSTED_TREE_CLASSIFIER",
    BOOSTER_TYPE = "GBTREE",
    MAX_ITERATIONS = 50,
    DATA_SPLIT_METHOD = "CUSTOM",
    DATA_SPLIT_COL="evaluation",
    labels = ["target"]) AS
SELECT
  * EXCEPT(customer_ID)
FROM
  `big-query-study-338516.model_9_phase_3.combined_prediction`