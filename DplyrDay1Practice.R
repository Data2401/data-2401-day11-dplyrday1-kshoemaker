# --------------------------------------------------
# dplyr Four-Verbs Challenge
# Practice: select, filter, mutate, arrange
# Dataset: starwars (comes with dplyr)
# --------------------------------------------------

library(dplyr)

## if you want to look at the metadata, run:
help(starwars)
data("starwars")

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

starwars |> 
  select(name, height, mass, species, homeworld)  |> 
  filter(height > 180) |> 
  mutate(bmi = mass / (height/100)^2) |> 
  arrange(-bmi)


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

## YOU CANNOT DO THESE IN THE ORDER I GAVE THEM TO YOU ##
## YOU CANNOT DO THESE IN THE ORDER I GAVE THEM TO YOU ##
## YOU CANNOT DO THESE IN THE ORDER I GAVE THEM TO YOU ##
## DO NOT CHANGE THE TASKS, CHANGE THE ORDER ##

starwars |> 
  arrange(-mass) |> 
  mutate(height_m = height / 100) |> 
  filter(species == "Human") |> 
  select(name, homeworld, species)


# Answer should be: 
#   # A tibble: 35 × 3
#   name              homeworld  species
# <chr>             <chr>      <chr>  
#   1 Darth Vader       Tatooine   Human  
# 2 Owen Lars         Tatooine   Human  
# 3 Qui-Gon Jinn      NA         Human  
# 4 Biggs Darklighter Tatooine   Human  
# 5 Anakin Skywalker  Tatooine   Human  
# 6 Mace Windu        Haruun Kal Human  
# 7 Han Solo          Corellia   Human  
# 8 Dooku             Serenno    Human  
# 9 Lando Calrissian  Socorro    Human  
# 10 Lobot             Bespin     Human 
# ...

# --------------------------------------------------
# Reflection Questions:
# --------------------------------------------------
# Disclaimer: I haven't run these yet :) 
# a) Which character has the highest BMI among those taller than 180 cm?
# b) Who is the tallest human character in the dataset?
# c) Which homeworld has the most characters taller than 180 cm?
# d) Does the character with the highest BMI surprise you? Why or why not?
