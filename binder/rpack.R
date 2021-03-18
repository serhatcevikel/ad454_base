    cranlist <- c(
                "countrycode",
                "dbplot",
                "dm",
                "RSQLite",
                "dtplyr",
                "sparklyr",
                "mlflow",
                "corrr",
                "mlr3",
                "RecordLinkage",
                "dat",
                "DTSg",
                "DataExplorer",
                "dataframeexplorer",
                "dataPreparation",
                "shinyML",
                "textTools",
                "modelplotr",
                "mlr3verse",
                "rsparkling",
                "parallelly"
    )

    ## cran packages
    for (package in cranlist)
    { 
        if (!require(package, character.only = T, quietly = T))
        {
            install.packages(package)
        }
    }
