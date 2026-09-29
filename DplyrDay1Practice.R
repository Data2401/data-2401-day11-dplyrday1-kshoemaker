# --------------------------------------------------
# dplyr Four-Verbs Challenge
# Practice: select, filter, mutate, arrange
# Dataset: starwars (comes with dplyr)
# --------------------------------------------------

library(dplyr)

## if you want to look at the metadata, run:
help(starwars)

# --------------------------------------------------
# TOGETHER
# --------------------------------------------------


# Create a pipeline using the following instructions:
# SELECT:
# Keep only name, height, mass, species, and homeworld.
# FILTER:
# From your selected dataset, filter to only characters taller than 180 cm.
# MUTATE:
# Create a new variable: bmi = mass / (height/100)^2
# ARRANGE
# Sort by bmi, highest first.




# --------------------------------------------------
# ON YOUR OWN
# --------------------------------------------------

# SELECT:
# Keep only name, homeworld, and species.
# FILTER:
# Keep only humans.
# MUTATE:
# Add a variable height_m = height / 100 (convert to meters).
# ARRANGE:
# Sort by mass, lowest first.





# --------------------------------------------------
# Reflection Questions:
# --------------------------------------------------
# Disclaimer: I haven't run these yet :) 
# a) Which character has the highest BMI among those taller than 180 cm?
# b) Who is the tallest human character in the dataset?
# c) Which homeworld has the most characters taller than 180 cm?
# d) Does the character with the highest BMI surprise you? Why or why not?
