# ============================================================
# Lesson 4: Vectors
# ============================================================

# --- The four atomic types ---
logi_vec <- c(TRUE, FALSE, TRUE)
int_vec  <- c(1L, 2L, 3L)           # L suffix = integer
dbl_vec  <- c(1.5, 2.7, 3.14)
chr_vec  <- c("apple", "banana", "cherry")

class(logi_vec)
class(int_vec)
class(dbl_vec)
class(chr_vec)

# --- Type coercion (mixing types) ---
c(1, "two", TRUE)    # all become character
c(TRUE, FALSE, 1)    # logical coerced to numeric (TRUE=1, FALSE=0)

# --- Type checking and conversion ---
is.numeric(dbl_vec)
is.character(chr_vec)
as.numeric(c("1", "2", "3"))
as.character(1:5)

# --- Naming vector elements ---
ages <- c(Alice = 25, Bob = 30, Carol = 22)
ages
ages["Bob"]          # access by name

# Alternative: assign names after creation
scores <- c(88, 95, 70)
names(scores) <- c("Math", "English", "Science")
scores

# --- Handy summary functions ---
length(dbl_vec)
sum(dbl_vec)
mean(dbl_vec)
range(dbl_vec)
