# Lesson 5 — Missing Values

## What this lesson covers
How R represents missing data with `NA`, why it matters, and how to handle it properly.

## Key Concepts

### What is NA?
`NA` stands for "Not Available" — R's way of representing a missing or unknown value.
It is *not* zero, not an empty string, and not `NULL`. It is the absence of a value.

### NA is contagious
Any operation involving `NA` returns `NA` — because you can't know the result of an unknown:
```r
NA + 5       # NA
NA > 3       # NA
sum(c(1, 2, NA))  # NA
```

### Checking for NA
You **cannot** use `== NA` to check for missing values — it always returns `NA`.  
Use `is.na()` instead:
```r
x <- c(1, NA, 3, NA, 5)
is.na(x)     # FALSE TRUE FALSE TRUE FALSE
```

### NaN — Not a Number
`NaN` is a special case of `NA` produced by undefined math:
```r
0 / 0        # NaN
Inf - Inf    # NaN
is.nan(NaN)  # TRUE
is.na(NaN)   # also TRUE — NaN is a subset of NA
```

### Ignoring NAs in calculations
Most functions have an `na.rm` argument to strip NAs before computing:
```r
x <- c(1, 2, NA, 4, 5)
mean(x)              # NA
mean(x, na.rm = TRUE)  # 3
sum(x, na.rm = TRUE)   # 12
```

## 💡 Key Takeaway
`NA` is one of R's most important concepts for data analysis — real-world data is almost always incomplete. Always check for NAs before summarising data, and use `na.rm = TRUE` when you want to compute over the non-missing values.
