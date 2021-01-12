load_packages <- function(packages){
  installed_packages <- packages %in% rownames(installed.packages())
  if (any(installed_packages == F)){
    install.packages(packages[!installed_packages])
  }
  
  invisible(lapply(packages, library, character.only = TRUE))
}
