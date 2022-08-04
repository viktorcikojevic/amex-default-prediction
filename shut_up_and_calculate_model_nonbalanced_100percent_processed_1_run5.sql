
  CREATE OR REPLACE MODEL
  `big-query-study-338516.amex_models.shut_up_and_calculate_model_nonbalanced_100percent_processed_1_run5`
OPTIONS (model_type='BOOSTED_TREE_CLASSIFIER',
BOOSTER_TYPE = "GBTREE",
  MAX_ITERATIONS = 200,
    DATA_SPLIT_METHOD = "RANDOM",
    labels = ['target']) AS
  select target, D_39_growth, P_2_min, S_3_avg, B_4_growth, D_39_max, D_41_growth, B_4_max, P_2_avg, B_3_max, D_44_growth, R_1_growth, D_43_max, R_1_avg, P_2_growth, S_3_min, B_2_growth, R_3_avg, D_79_growth, D_129_min, D_65_growth, S_3_max, B_9_growth, B_3_stddev, B_11_growth, B_5_growth, R_16_avg, D_48_growth, D_42_avg, D_62_avg, B_2_avg, D_39_stddev, B_1_growth, D_65_max, R_2_growth, S_23_growth, D_59_stddev, B_7_avg, D_42_min, R_11_avg, D_79_max, D_128_min, D_51_avg, D_62_min, S_15_max, D_45_max, B_23_growth, R_27_min, D_51_max, D_132_min, B_21_max, B_7_max, B_5_avg, S_26_max, R_7_growth, R_3_max, B_11_max, R_1_max, R_2_max, R_5_growth, B_1_avg, B_17_avg, D_65_avg, B_22_growth, D_44_max, D_43_min, D_42_max, D_45_min, D_131_max, B_36_max, S_23_stddev, R_2_avg, B_18_min, D_128_avg, B_14_growth, S_8_min, B_6_avg, S_23_avg, D_132_growth, D_112_growth, D_55_growth, R_16_stddev, S_25_avg, B_6_max, B_21_growth, R_1_stddev, D_55_min, D_79_stddev, D_56_avg, S_25_stddev, D_59_max, D_83_max, D_51_min, B_6_min, B_3_avg, S_27_avg, D_121_max, D_106_max, R_8_max, D_41_avg, B_33_growth, D_54_min, D_56_growth, S_24_max, D_65_stddev, B_19_max, S_3_stddev, B_11_avg, B_18_avg, B_12_min, D_70_max, D_139_max, D_77_stddev, B_7_min, B_2_min, D_48_avg, B_22_max, B_9_max, D_66, D_121_min, D_45_avg, D_123_stddev, D_50_max, B_20_growth, D_42_growth, R_10_avg, B_11_min, R_7_max, S_9_max, D_53_stddev, B_4_avg, S_9_min, D_81_stddev, B_18_stddev, B_7_stddev, B_19_growth, S_18_avg, S_11_min, R_17_stddev, D_114, S_22_growth, R_18_max, B_37_growth, R_22_max, S_25_min, R_3_growth, S_27_min, D_41_stddev, B_32_avg, B_3_min, B_16_stddev, B_22_min, D_54_avg, D_45_growth, D_64, D_46_min, D_93_min, B_5_stddev, B_29_growth, S_9_stddev, B_26_growth, B_14_avg, B_14_stddev, D_48_max, D_78_growth, D_60_avg, R_16_max, S_26_avg, B_1_max, B_29_avg, B_19_avg, B_5_min, S_12_avg, B_26_min, D_77_min, B_8_max, D_83_min, D_94_avg, D_69_stddev, B_22_stddev, D_113_growth, B_10_min, B_4_min, S_15_min, R_19_growth, B_8_growth, S_27_growth, D_75_stddev, B_24_stddev, D_72_stddev, D_74_min, B_24_min, B_26_stddev, S_13_min, B_12_max, D_77_max, D_125_stddev, D_89_max, D_109_max, D_47_avg, B_23_max, S_3_growth, D_127_stddev, R_8_growth, S_26_stddev, D_131_growth, D_121_growth, R_9_growth, D_123_growth, D_91_growth, R_13_min, B_41_max, B_1_min, B_37_max, D_144_stddev, D_133_max, D_84_avg, D_56_stddev, D_41_max, D_86_avg, R_21_max, D_82_stddev, P_3_min, D_50_growth, D_143_min, B_29_max, S_25_max, R_3_min, D_118_avg, S_5_min, B_10_avg, B_27_min, R_6_max, D_127_avg, D_59_min, B_6_growth, D_124_growth, D_46_avg, B_24_avg, B_28_growth, D_122_max, S_20_max, D_127_max, R_24_max, R_10_min, D_70_min, D_121_stddev, R_24_avg, B_12_avg, B_13_avg, R_5_max, S_7_growth
  from `big-query-study-338516.kaggle_amex_dataset.train_data_labels_100percent_processed_1`;
