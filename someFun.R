.libPaths()

library()

search()

install.packages("XML")

install.packages(file_name_with_path, repos = NULL, type = "source")

# Install the package named "XML"
install.packages("C:/Users/M1046091/Documents/R course/Data/ggplot2_3.1.0.zip", repos = NULL, type = "source")

# Verify the package is installed.
any(grepl("xlsx",installed.packages()))
any()


install.packages("RCurl",dependencies = TRUE)
install.packages("XML",dependencies = TRUE)
install.packages("stringr",dependencies = TRUE)
install.packages("plyr",dependencies = TRUE)