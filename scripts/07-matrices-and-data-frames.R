# ============================================================
# Lesson 7: Matrices and Data Frames
# ============================================================

# --- Creating a matrix: Method 1 (dim on a vector) ---
my_vector <- 1:20
dim(my_vector) <- c(4, 5)   # 4 rows, 5 columns
my_vector                    # now displays as a matrix
class(my_vector)             # "matrix" "array"

# --- Creating a matrix: Method 2 (matrix function) ---
my_matrix <- matrix(1:20, nrow = 4, ncol = 5)
my_matrix

# Both are identical
identical(my_vector, my_matrix)   # TRUE

# --- Checking dimensions ---
dim(my_matrix)     # 4 5
nrow(my_matrix)    # 4
ncol(my_matrix)    # 5

# --- Naming rows and columns ---
rownames(my_matrix) <- c("row1", "row2", "row3", "row4")
colnames(my_matrix) <- c("col1", "col2", "col3", "col4", "col5")
my_matrix

# --- cbind(): add a column to a matrix ---
patients <- c("Bill", "Gina", "Kelly", "Sean")
combined <- cbind(patients, my_matrix)
combined
class(combined)   # still a matrix — but now all character! (coercion)

# --- Data Frames: mixed types allowed ---
my_data <- data.frame(patients, my_matrix, stringsAsFactors = FALSE)
my_data
class(my_data)    # "data.frame"

# --- Inspecting a data frame ---
nrow(my_data)
ncol(my_data)
colnames(my_data)
str(my_data)      # structure: types of each column
