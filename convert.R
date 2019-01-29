library(tools)

rmd2jupyter <- function( filename, path=getwd() ) 
{
  path_in <- paste( path, "/", filename, " ", sep="" )
  path_out <- paste(path, "/", file_path_sans_ext(filename), ".ipynb", sep="")
  full_shell <- paste("notedown ", path_in, " --rmagic --run > ", path_out, sep="")
  system(full_shell)
}

# download the example.Rmd file from this repository
# setwd(...) to where the example.Rmd file is located

rmd2jupyter( "ipynb_convert/sample_notebook.Rmd" )