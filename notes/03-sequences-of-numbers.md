# Lesson 3 — Sequences of Numbers

## What this lesson covers
Multiple ways to generate sequences of numbers in R — a very common need when working with data.

## Key Concepts

### The colon operator `:`
The simplest way to generate a sequence of integers.
```r
1:10        # 1 2 3 4 5 6 7 8 9 10
10:1        # counts backwards
```

### seq() — flexible sequences
```r
seq(1, 10)                   # same as 1:10
seq(1, 10, by = 2)           # 1 3 5 7 9  (step by 2)
seq(0, 1, by = 0.1)          # decimals work too
seq(1, 10, length.out = 5)   # exactly 5 evenly spaced values
```

### rep() — repeating values
```r
rep(0, times = 5)            # 0 0 0 0 0
rep(c(1, 2, 3), times = 3)   # repeat whole vector 3 times
rep(c(1, 2, 3), each = 3)    # repeat each element 3 times
```

### Checking length
```r
x <- seq(5, 50, length.out = 30)
length(x)    # returns 30
```

## 💡 Key Takeaway
`seq()` and `rep()` are workhorses you'll use constantly — for creating index vectors, test data, axis labels, and much more. The `length.out` argument in `seq()` is particularly handy when you need a precise number of points.
