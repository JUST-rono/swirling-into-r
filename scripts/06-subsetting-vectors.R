# ============================================================
# Lesson 6: Subsetting Vectors
# ============================================================

x <- c(10, 20, 30, 40, 50)

# --- Subsetting by index (R starts at 1, not 0!) ---
x[1]          # first element: 10
x[3]          # third element: 30
x[c(1, 3, 5)] # 1st, 3rd, 5th: 10 30 50
x[2:4]        # elements 2 through 4: 20 30 40

# --- Excluding elements with negative index ---
x[-1]          # everything except 1st
x[-c(1, 5)]    # everything except 1st and 5th

# --- Subsetting with a logical vector ---
x[c(TRUE, FALSE, TRUE, FALSE, TRUE)]  # 10 30 50

# --- Logical conditions (most powerful!) ---
x[x > 25]          # elements greater than 25
x[x == 30]         # elements equal to 30
x[x != 20]         # elements not equal to 20

# --- Handling NAs with logical subsetting ---
y <- c(1, NA, 3, NA, 5)
y[!is.na(y)]        # only non-NA values
y[!is.na(y) & y > 2] # non-NA AND greater than 2

# --- Subsetting named vectors ---
ages <- c(Alice = 25, Bob = 30, Carol = 22)
ages["Bob"]                 # 30
ages[c("Alice", "Carol")]   # 25 22

# --- Edge cases to know about ---
x[0]     # returns nothing (0 index invalid in R)
x[100]   # returns NA (out of bounds, no error)
