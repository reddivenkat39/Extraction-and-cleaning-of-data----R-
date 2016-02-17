userurl <- "https://data.baltimorecity.gov/Community/21211-Restaurants/kewm-hd3n"
download.file("userurl",destfile = "E:/data/restaurant.csv",method = "libcurl",mode="wb")
# the head command will allow us to subset the data, n=3 gives the first 3 records of
# the restaurant data

restaurants <- read.csv("E:/data/restaurant.csv")
head(restaurants,n=3)


# We can use tail command on the data for getting the last records of the data 
#This is a kind of subsetting the data 

tail(restaurants, n= 3)


#now getting the summary of the data we can use the function SUMMARY

summary(restaurants)


# like desc the table in SQL we have str in R
str(restaurants)
restaurants

# we can quantile the data 

quantile(restaurants$zipCode,na.rm = T)

table(restaurants$zipCode)
table(restaurants$zipCode, useNA ="ifany")

# check for any not defined values

any(is.na(restaurants))

all(restaurants$zipCode > 0)
table(restaurants$neighborhood %in% c("Hampden"))

#we can subset the data 

restaurants[restaurants$neighborhood %in%  c("Hampden"),]


# we can crosstab

