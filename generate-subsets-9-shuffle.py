import numpy as np
import math
import random
# These are all the variables.

TARGET_SECTORS = 20

features = open(f"model-9-all-features.txt", "r").read().split(",")
random.shuffle(features)
print(f"There are {len(features)} features.")

N_FEATURES_PER_SECTOR = math.ceil(len(features) / TARGET_SECTORS)
print(N_FEATURES_PER_SECTOR)

for sector in range(TARGET_SECTORS):
    f = features[sector * N_FEATURES_PER_SECTOR: (sector + 1) * N_FEATURES_PER_SECTOR]    
    if "D_63_last_value" in f:
        f.remove("D_63_last_value")
    if "D_64_last_value" in f:
        f.remove("D_64_last_value")
    
 
    features_sql = ["customer_ID", "target", "evaluation"] + f
    important_features = ','.join(features_sql)
    MODEL_TYPE = '"BOOSTED_TREE_CLASSIFIER"'
    BOOSTER_TYPE = '"GBTREE"'
    TARGET_LABEL = '"target"'
    DATA_SPLIT_METHOD = '"CUSTOM"'
    DATA_SPLIT_COL = '"evaluation"'
    
    model_creation = f"CREATE OR REPLACE MODEL `big-query-study-338516.model_9_ensemble.sector_{sector}` OPTIONS (model_type={MODEL_TYPE}, BOOSTER_TYPE = {BOOSTER_TYPE}, MAX_ITERATIONS = 50, DATA_SPLIT_METHOD = {DATA_SPLIT_METHOD}, DATA_SPLIT_COL={DATA_SPLIT_COL}, labels = [{TARGET_LABEL}]) AS select {important_features} from `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_8_fortraining`;"
    print(model_creation)
    print("\n\n")
    
    