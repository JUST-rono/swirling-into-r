# ============================================================
# Lesson 1: Basic Building Blocks
# ============================================================

# --- R as a calculator ---
5 + 3
10 - 4
3 * 7
15 / 4
2 ^ 8        # exponentiation

# --- Storing values in variables ---
x <- 5        # preferred assignment operator in R
y <- 10
x + y

# --- Creating vectors with c() ---
my_vec <- c(1.1, 2.2, 3.3, 4.4, 5.5)
my_vec

# --- Vectorised operations (no loop needed!) ---
my_vec * 2          # multiply every element by 2
my_vec + my_vec     # element-wise addition
sqrt(my_vec)        # apply sqrt to every element

# --- Useful info about a vector ---
length(my_vec)
class(my_vec)
