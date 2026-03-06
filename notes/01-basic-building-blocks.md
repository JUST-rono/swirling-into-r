# Lesson 1 — Basic Building Blocks

## What this lesson covers
The very foundation of R: how to use it as a calculator, how to create variables, and how to work with vectors.

## Key Concepts

### R as a calculator
R can evaluate arithmetic expressions directly in the console. It follows standard order of operations.

### Variables (assignment)
You store values using the `<-` operator. This is R's preferred assignment operator over `=`.

```r
x <- 5
y <- 10
x + y  # returns 15
```

### Vectors
A vector is R's most basic data structure — an ordered collection of values of the same type.
You create one using the `c()` function (short for "combine" or "concatenate").

```r
nums <- c(1, 2, 3, 4, 5)
```

### Operations on vectors
R is *vectorised* — math operations apply to every element automatically, no loop needed.

```r
nums * 2       # multiplies every element by 2
nums + nums    # adds element-by-element
```

## 💡 Key Takeaway
R's vectorised nature is one of its biggest strengths. Once you understand that most operations work element-by-element on vectors, a lot of R starts to make sense.
