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
dim(ndvi2000) #2889 4587 NDVI data is in comperable to lat lon format

# ok, now you need such data frames for all available years to store into an array
# so, look for scripts/CSVInput.R - this script is called into the master data generator file: AVHRRDataGenerator.R

# Running AVHRRDataGenerator.R by parts: completed upto detrending

#----------------------NOTES: what I learned from Thomas--------------------------------------------------

# Raw NDVI data for year 1989 have some problem in the dessert region: plot to check it
#     therefore, detrending starts from 1990.

# Landscan pop data averaging over 2003, 2004 because it is just at the middle in 2000 to 2006

# Thomas guessed chicago has anomaly for 2010 but when he carried out analysis for detrended chicago data 
#     excluding 2010, still it is not solved - chicago is weird for unknown reason!

#-------------------------------------------------------------------------------------------------------


