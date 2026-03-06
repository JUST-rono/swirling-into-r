# Lesson 4 — Vectors

## What this lesson covers
A deeper look at vectors — the different types R supports, how to name elements, and how to mix types (spoiler: R coerces them).

## Key Concepts

### Types of atomic vectors
R has 4 main atomic types:
| Type | Example |
|------|---------|
| logical | `TRUE`, `FALSE` |
| integer | `1L`, `42L` |
| double (numeric) | `3.14`, `2.0` |
| character | `"hello"`, `"R"` |

### Type coercion
When you mix types in `c()`, R silently converts everything to the most flexible type:
```r
c(1, "two", TRUE)   # becomes character: "1" "two" "TRUE"
c(1, TRUE)          # becomes numeric:   1 1  (TRUE = 1, FALSE = 0)
```

### Checking and converting types
```r
class(x)        # what type is this?
is.numeric(x)   # is it numeric?
as.character(x) # convert to character
as.numeric(x)   # convert to numeric
```

### Naming vector elements
```r
ages <- c(Alice = 25, Bob = 30, Carol = 22)
# or:
names(ages) <- c("Alice", "Bob", "Carol")

ages["Alice"]   # access by name
```

### Useful vector functions
```r
length(x)   # number of elements
sum(x)      # total
mean(x)     # average
range(x)    # min and max
```

## 💡 Key Takeaway
Type coercion is R doing you a "favour" — but it can cause silent bugs if you're not aware of it. Always check `class()` when a result looks unexpected.
