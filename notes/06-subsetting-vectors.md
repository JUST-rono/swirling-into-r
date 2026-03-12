# Lesson 6 — Subsetting Vectors

## What this lesson covers
How to pull out specific elements from a vector using square brackets `[]` — one of the most essential skills in R.

## Key Concepts

### Subsetting by index (position)
R uses `[]` to access elements. Importantly, **R starts counting at 1**, not 0.
```r
x <- c(10, 20, 30, 40, 50)
x[1]        # 10 — first element
x[3]        # 30 — third element
```

### Subsetting multiple elements
```r
x[c(1, 3, 5)]    # 1st, 3rd, and 5th elements
x[2:4]           # elements 2 through 4
```

### Excluding elements with negative index
```r
x[-1]            # everything except the 1st element
x[-c(1, 3)]      # everything except 1st and 3rd
```

### Subsetting by logical vector
You can pass a TRUE/FALSE vector — only positions with TRUE are returned:
```r
x[c(TRUE, FALSE, TRUE, FALSE, TRUE)]   # 10 30 50
```
This is especially powerful when combined with conditions:
```r
x[x > 25]        # all elements greater than 25
x[!is.na(x)]     # all non-NA elements
```

### Subsetting by name
If a vector has named elements, you can subset by name:
```r
ages <- c(Alice = 25, Bob = 30, Carol = 22)
ages["Bob"]               # 30
ages[c("Alice", "Carol")] # 25 22
```

### Watch out for edge cases
```r
x[0]     # returns nothing — 0 index is not valid in R
x[100]   # returns NA — index out of bounds doesn't error, just returns NA
```

## 💡 Key Takeaway
Logical subsetting (`x[x > 25]`) is the most powerful form — it's the foundation of filtering data, which you'll do constantly in real data analysis.
