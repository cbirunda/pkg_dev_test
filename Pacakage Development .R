#Load usethis package to start package creation process

library(usethis)

#Create function
usethis::create_package("~/Desktop/PackageDevelopment")

#Create function
usethis::use_r("dedup")

#load this function
devtools::load_all()

  # Use shortcut "Ctrl + Shift + L" to run devtools::load_all()

#Check that the funciton works without any issues
devtools::check()
usethis::edit_r_profile()

# add:

if (interactive()) {
  suppressMessages(require(devtools))
  suppressMessages(require(usethis))
  suppressMessages(require(testthat))
}

options(
  warnPartialMatchArgs = TRUE,
  warnPartialMatchDollar = TRUE,
  warnPartialMatchAttr = TRUE
)

