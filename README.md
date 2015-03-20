# Getting and Cleaning Data

## Directory organization

The project is organized as follows:

* A run_analysis.R script at project root
* Project documentation: README.md, CodeBook.MD
* A ./scripts directory containing scripts performing each step of data transformation
* (A ./data script will be generated when running run_amalyis.R, hosting downloaded source data)
* A tidydata.txt file, result of analysis, this file can be generated by running run_analysis.R

Directory structure:

    CodeBook.md
    ./data
        ...
    README.md
    run_analysis.R
    ./scripts
        extract.R
        generate-tidydata.R
        getdata.R
        labelize.R
        merge.R
        normalize.R
    tidydata.txt


## Main script

To Run project data analysis, please run the following script in R or RStudio
    # Running script from R rather than RStudio might speed up the read.fwf() step...
    # setwd('PROJECT_RETRIEVED_FROM_GIT_PATH')
    source('run_analysis.R')

## Transformation scripts

run_analysis.R will performed the full data analysis and transformation (at each step, we do display information on data), by including and executing the following script in this order:

* ./scripts/getdata.R
    * Will get data source, copy and unzip it in ./data directory
    * Generates first data frames to work on
    * **This step takes several minutes**
* ./scripts/merge.R
    * Merges train and test datasets, for all 3 datasets where interested in :
        * subject_train.txt and subject_train.txt : Individuals participating in tests (represented by a number)
        * y_train.txt and y_test.txt : Performed and measured activities
        * X_train.txt and X_test.txt : Measurements
* ./scripts/extract.R
    * Only retaining mean and standard deviation for each features (only concerns Measurement dataset)
* ./scripts/normalize.R
    * Create a factor for activities, to ease dataset understanding and manipulation
    * Factor levels: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
* ./scripts/labelize.R
    * Labelize all 68 remaining features (subject, activity, and all 66 mean or standard deviation for each measurement)
* ./scripts/generate-tidydata.R
    * Creates a final data frame
        * grouping subject and activity
        * computing average value for each mean or standard deviation for each measurement
    * Generates final tidydata !!!
        * tidydata.txt

You're done, a tidydata.txt file has been generated and is available for further analysis

    tidydata.txt







