######
#NO.1#
######
data<-read.csv("C:\\Users\\RM A-225\\Documents\\Midterm_Rep\\Seatwork Midterm\\midetrmseatwork_data.csv")
getValu<-function(disdata,row,col){
  disdata[row,col]
}
getValu(data,50,"Ozone")

######
#NO.2#
######
data<-read.csv("C:\\Users\\RM A-225\\Documents\\Midterm_Rep\\Seatwork Midterm\\midetrmseatwork_data.csv")
totaNA<-function(disdata,col){
  sum(is.na(disdata[,col]))
}
totaNA(data,"Ozone")

######
#NO.3#
######
data<-read.csv("C:\\Users\\RM A-225\\Documents\\Midterm_Rep\\Seatwork Midterm\\midetrmseatwork_data.csv")
#remove(datanew)
meanColSelRow<-function(disdata,min,max,col){
  datanew<-disdata[min:max,col]
  mean(datanew,na.rm=TRUE)
}
meanColSelRow(data,80,80,"Ozone")






























#     _/\/\/\/\/\/\/\/\_
#   _/                  \_
#   \_                  _/
#     \_   ---------  _/
#       \ /         \/
#        |  o    o  |
#        |          |
#        |     ᴥ    |
#         \________/
#           |   |