    cranlist <- c(
                  "countrycode",
                  "dbplot",
                  "dm",
                  "RSQLite",
                  "dtplyr"
    )

    ## cran packages
    for (package in cranlist)
    { 
        if (!require(package, character.only = T, quietly = T))
        {
            install.packages(package)
        }
    }
