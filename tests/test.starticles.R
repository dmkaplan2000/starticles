# Use a temporary directory ----------------------------
owd = getwd()
td = tempfile()
dir.create(td,recursive=TRUE)
setwd(td)
print(td) # To see where files will be

# Create the draft template ----------------------------
rmarkdown::draft("MYARTICLENAME.Rmd","generic_article","starticles",edit=FALSE)

# Render PDF document ----------------------------------
# Fails for me when run using RStudio "Run examples" link in help,
# but not when sourced from command line.

# Requires recent version of pandoc (provided by RStudio)
if (rmarkdown::pandoc_available(version="2.17"))
  rmarkdown::render("MYARTICLENAME/MYARTICLENAME.Rmd",
                    envir=new.env(parent = globalenv()))

# Return to orignal workind directory ------------------
setwd(owd)
