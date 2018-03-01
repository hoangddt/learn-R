match.score <- 300 # assign var in global environment
match.score # get from global env
get("match.score", globalenv()) # get from global environments

# Create custom environment
my.environment <- new.env() # create new custom environment
parent.env(my.environment)

# Assign a variable in custom environment
assign("match.score", 320, my.environment) # assign var in custom environment
my.environment[["match.score"]] <- 320
my.environment$match.score <- 320

# Get variable from custom environment
get("match.score", my.environment)
my.environment[["match.score"]]
my.environment$match.score