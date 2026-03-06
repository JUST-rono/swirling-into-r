# Lesson 2 — Workspace and Files

## What this lesson covers
How to manage your R session: checking what's in your environment, navigating your file system, and creating files/directories — all from within R.

## Key Concepts

### Checking your workspace
```r
ls()          # list all variables currently in your environment
getwd()       # get current working directory
```

### Setting your working directory
```r
setwd("path/to/folder")
```

### Working with files and directories
```r
dir.create("my_folder")              # create a new directory
file.create("my_file.R")             # create a new file
file.exists("my_file.R")             # check if a file exists
list.files()                         # list files in current directory
file.rename("old_name.R", "new.R")   # rename a file
file.copy("source.R", "dest.R")      # copy a file
file.remove("file.R")                # delete a file
```

### Checking arguments of a function
```r
args(list.files)   # shows what parameters a function accepts
```

## 💡 Key Takeaway
You can manage your entire file system from the R console — no need to leave RStudio to create folders or check what files exist. This is especially useful when automating workflows.
