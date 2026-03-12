# Lesson 7 — Matrices and Data Frames

## What this lesson covers
Two important 2D data structures in R: matrices (one data type) and data frames (mixed data types).

## Key Concepts

### Matrices
A matrix is a vector with a `dim` (dimensions) attribute — rows and columns, all of the same type.

```r
# Method 1: assign dim to a vector
my_vector <- 1:20
dim(my_vector) <- c(4, 5)   # 4 rows, 5 columns — fills column by column

# Method 2: use matrix() directly
my_matrix <- matrix(1:20, nrow = 4, ncol = 5)

class(my_matrix)       # "matrix" "array"
dim(my_matrix)         # 4 5
attributes(my_matrix)  # shows dim attribute
```

### Naming rows and columns
```r
rownames(my_matrix) <- c("r1", "r2", "r3", "r4")
colnames(my_matrix) <- c("c1", "c2", "c3", "c4", "c5")
```

### cbind() — combining matrices/vectors by column
```r
patients <- c("Bill", "Gina", "Kelly", "Sean")
cbind(patients, my_matrix)   # adds patients as a new column
# Note: this coerces everything to character!
```

### Data Frames
A data frame is like a matrix but each column can be a different type — the most common structure for real datasets.

```r
my_data <- data.frame(patients, my_matrix)
my_data

# Check structure
class(my_data)    # "data.frame"
nrow(my_data)     # number of rows
ncol(my_data)     # number of columns
```

### Key difference: matrix vs data frame
| | Matrix | Data Frame |
|---|---|---|
| Data types | One type only | Each column can differ |
| Common use | Math/linear algebra | Real-world datasets |
| Created with | `matrix()` | `data.frame()` |

## 💡 Key Takeaway
In practice, you'll work with data frames far more than matrices — almost every real dataset you import into R will be a data frame. Understanding that each column is its own vector (with its own type) is the mental model that makes data frames click.
