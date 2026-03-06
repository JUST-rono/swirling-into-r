# ============================================================
# Lesson 5: Missing Values
# ============================================================

# --- NA basics ---
NA                  # just a missing value
class(NA)           # logical by default
NA + 5              # NA — contagious!
NA > 3              # NA
"hello" == NA       # NA — never use == to check for NA

# --- Detecting NAs correctly ---
x <- c(1, NA, 3, NA, 5)
is.na(x)            # FALSE TRUE FALSE TRUE FALSE

# Count how many NAs exist
sum(is.na(x))       # 2

# --- NaN (Not a Number) ---
0 / 0               # NaN
Inf - Inf           # NaN
is.nan(NaN)         # TRUE
is.na(NaN)          # also TRUE — NaN is a type of NA

# --- Ignoring NAs in calculations ---
data <- c(10, 20, NA, 40, 50)

mean(data)               # NA — default behaviour
mean(data, na.rm = TRUE) # 30 — ignores the NA

sum(data, na.rm = TRUE)  # 120
min(data, na.rm = TRUE)  # 10
max(data, na.rm = TRUE)  # 50

# --- Filtering out NAs ---
data[!is.na(data)]       # keep only non-NA values
complete <- na.omit(data)  # another way to drop NAs
complete
