# So, in data/csvFiles/ I have total 56 csv files that I got from Thomas
# They are:
#         NDVI (1989 to 2018)         = 30
#         Landscan_pop (2000 to 2017) = 18 
#         Lat, Long                   = 2
#         Agriculture (2001, 2006)    = 2
#         Development (2001, 2006)    = 2
#         Elevation (mean, sd)        = 2

# first read a csv file for NDVI 2000 
ndvi2000<-read.csv("./data/csvFiles/AVHRR_NDVI_WaterRemoved_2000.csv",header = F)
class(ndvi2000)
head(ndvi2000[500,500:505]) # has NA to remove water body
dim(ndvi2000) #2889 4587 NDVI data is in lat lon format

# ok, now you need such data frames for all available years to store into an array
# so, look for scripts/CSVInput.R - this script is called into the master data generator file: AVHRRDataGenerator.R

# Running AVHRRDataGenerator.R by parts: completed upto detrending
