# ============================================================
# Lesson 3: Sequences of Numbers
# ============================================================

# --- Colon operator : ---
1:10
10:1          # backwards works too
-5:5

# --- seq() for more control ---
seq(1, 10)                    # same as 1:10
seq(1, 10, by = 2)            # step by 2: odd numbers
seq(0, 1, by = 0.1)           # decimal steps
seq(1, 10, length.out = 5)    # exactly 5 evenly-spaced values

# --- rep() for repetition ---
rep(0, times = 5)             # five zeros
rep(c(1, 2, 3), times = 3)    # repeat whole vector
rep(c(1, 2, 3), each = 3)     # repeat each element

# --- Checking length ---
x <- seq(5, 50, length.out = 30)
length(x)    # should be 30
