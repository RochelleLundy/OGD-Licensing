# Load libraries
library(jsonlite)
library(tidyverse)

## Los Angeles:
# retrieve data
la_json <- fromJSON("http://api.us.socrata.com/api/catalog/v1?domains=data.lacity.org&categories=a+safe+city&limit=1000&search_context=data.lacity.org")

# flatten and extract relevant information
la_meta <-  la_json$results$metadata
la_class <- la_json$results$classification
la_resource <- la_json$results$resource

# create dataframe of relevant variables
la_resource <- select(la_resource, -page_views, -columns_name, -columns_field_name, -columns_datatype, -columns_description, - columns_format)
la_data <- la_resource
la_data$domain <- la_meta$domain
la_data$license <- la_meta$license

# filter out 'child'-level datasets for purposes of pilot on grounds that license may have been applied at parent level
la_data <- filter(la_data, parent_fxf == "NULL")

## Providence:
# retrieve data
providence_json <- fromJSON("http://api.us.socrata.com/api/catalog/v1?domains=data.providenceri.gov&categories=Public+Safety&search_context=data.providenceri.gov")

# flatten and extract relevant information
providence_meta <-  providence_json$results$metadata
providence_class <- providence_json$results$classification
providence_resource <- providence_json$results$resource

# create dataframe of relevant variables
providence_resource <- select(providence_resource, -page_views, -columns_name, -columns_field_name, -columns_datatype, -columns_description, - columns_format)
providence_data <- providence_resource
providence_data$domain <- providence_meta$domain
providence_data$license <- providence_meta$license

# filter out 'child'-level datasets for purposes of pilot on grounds that license may have been applied at parent level
providence_data <- filter(providence_data, parent_fxf == "NULL")


## Fort Worth:
# retrieve data
fortworth_json <- fromJSON("http://api.us.socrata.com/api/catalog/v1?domains=data.fortworthtexas.gov&categories=Public+Safety&limit=1000&search_context=data.fortworthtexas.gov")

# flatten and extract relevant information
fortworth_meta <-  fortworth_json$results$metadata
fortworth_class <- fortworth_json$results$classification
fortworth_resource <- fortworth_json$results$resource

# create dataframe of relevant variables
fortworth_resource <- select(fortworth_resource, -page_views, -columns_name, -columns_field_name, -columns_datatype, -columns_description, - columns_format)
fortworth_data <- fortworth_resource
fortworth_data$domain <- fortworth_meta$domain
fortworth_data$license <- fortworth_meta$license

# filter out 'child'-level datasets for purposes of pilot on grounds that license may have been applied at parent level
fortworth_data <- filter(fortworth_data, parent_fxf == "NULL")

## Dallas:
# retrieve data
dallas_json <- fromJSON("http://api.us.socrata.com/api/catalog/v1?domains=www.dallasopendata.com&categories=Public+Safety&limit=1000&search_context=www.dallasopendata.com")

# flatten and extract relevant information
dallas_meta <-  dallas_json$results$metadata
dallas_class <- dallas_json$results$classification
dallas_resource <- dallas_json$results$resource

# create dataframe of relevant variables
dallas_resource <- select(dallas_resource, -page_views, -columns_name, -columns_field_name, -columns_datatype, -columns_description, - columns_format)
dallas_data <- dallas_resource
dallas_data$domain <- dallas_meta$domain
dallas_data$license <- dallas_meta$license

# filter out 'child'-level datasets for purposes of pilot on grounds that license may have been applied at parent level
dallas_data <- filter(dallas_data, parent_fxf == "NULL")

## All license data combined:
# select columns by city
allLA_license <- select(la_data, id, license, type, createdAt)
allPR_license <- select(providence_data, id, license, type, createdAt)
allFW_license <- select(fortworth_data, id, license, type, createdAt)
allDL_license <- select(dallas_data, id, license, type, createdAt)

# merge dataframes
all_license <- rbind(allLA_license, allPR_license, allFW_license, allDL_license)



