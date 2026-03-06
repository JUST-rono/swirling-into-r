# ============================================================
# Lesson 2: Workspace and Files
# ============================================================

# --- Check your environment ---
ls()          # what variables exist right now?
getwd()       # where is R currently looking?

# --- Create a directory and file ---
dir.create("swirl_practice")
file.create("swirl_practice/test.R")

# --- Verify it worked ---
file.exists("swirl_practice/test.R")
list.files("swirl_practice")

# --- Rename and copy ---
file.rename("swirl_practice/test.R", "swirl_practice/renamed.R")
file.copy("swirl_practice/renamed.R", "swirl_practice/copy.R")
list.files("swirl_practice")

# --- Check function arguments ---
args(list.files)

# --- Clean up (optional) ---
# file.remove("swirl_practice/renamed.R")
# file.remove("swirl_practice/copy.R")
# unlink("swirl_practice", recursive = TRUE)
