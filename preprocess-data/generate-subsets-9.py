import numpy as np
# These are all the variables.

num_of_variables = {
    "P": 21,
    "D": 629,
    "B": 270,
    "S": 147,
    "R": 196
}


letters = ["P", "D", "B", "S", "R"]

sector_sizes = {
    "P" : 10,
    "D" : 73,
    "B" : 60,
    "S" : 50,
    "R" : 50
}
number_of_subsectors = {
    "P" : 1,
    "D" : 6,
    "B" : 3,
    "S" : 2,
    "R" : 3
}

for letter in letters:
    
    for indx in range(0, number_of_subsectors[letter]):
        subset_of_features = features[indx*sector_sizes[letter]: (indx + 1)*sector_sizes[letter]]
        sector_name = f"{letter}_sector_{indx}"
        # print("R_22_growth_max" in subset_of_features)
        
        features = open(f"model-9-all-features.txt", "r").read()
    print(set(features))


# My target would be to have:
# P_sector_1: 10

# D_sector_1: 73
# D_sector_2: 73
# D_sector_3: 73
# D_sector_4: 73
# D_sector_5: 73
# D_sector_6: 73

# =6*78+75+113 

# B_sector_1: 60
# B_sector_2: 60
# B_sector_3: 60
# =60*3+90

# S_sector_1: 50
# S_sector_2: 50
# =2*50+20+27

# R_sector_1: 50
# R_sector_2: 50
# R_sector_3: 50

# mix_sector_1: 78 of D, 6 of P, 45 of B, 20 of S, 25 of R
# mix_sector_2: 113 of D, 5 of P, 45 of B, 27 of S, 22 of R



