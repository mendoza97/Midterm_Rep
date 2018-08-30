#Mendoza, Luigi G.
#1710040

#Entering Input
x<-1
print(x)
x
msg<-"hello"

#Evaluation
x<-5
x
print(x)

#Printing
x<-1:20

#Creating Vectors
x<-c(0.5,0.6)
x
x<-c(TRUE,FALSE)
x
x<-c(T,F)
x
x<-c("a","b","c")
x
x<-9:29
x
x<-c(1+0i,2+4i)
x

#Mixing Objects
y<-c(1.7,"a")
y
y<- c(TRUE,2)
y
y<-c("a",TRUE)
y

#Explicit Coercion1
x<-0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

#Explicit Coercion2
x<-c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)

#Lists
x<-list(1,"a",TRUE,1+4i)

#Matrices1
m<-matrix(nrow=2,ncol=3)
m
dim(m)
attributes(m)

#Matrices2
m<-matrix(1:6, nrow=2, ncol=3)
m

#Matrices3
m<-1:10
m
dim(m)<-c(2,5)
m

#cbing and rbing
x<-1:3
y<-10:12
cbind(x,y)
rbind(x,y)

#Factors1
x<-factor(c("yes","yes","no","yes","no"))
x
table(x)
unclass(x)

#Factors2
x<-factor(c("yes","yes","no","yes","no"),levels=c("yes","no"))
x

#Missing Values
x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)
x<-c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)

#Data Frames
x<-data.frame(foo=1:4,bar=c(T,T,F,F))
x
nrow(x)
ncol(x)

#Names1
x<-1:3
names(x)
names(x)<-c("foo","bar","norf")
x
names(x)

#Names2
x<-list(a=1,b=2,c=3)
x

#Names3
m<-matrix(1:4,nrow=2,ncol=2)
dimnames(m)<-list(c("a","b"),c("c","d"))
m

#dput-ting R objects
y<-data.frame(a=1,b="a")
dput(y)
dput(y,file="y.R")
new.y<-dget("y.R")
new.y

#Dumping R objects
x<-"foo"
y<-data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
source("data.R")
y
x

#Subsetting
x<-c("a","b","c","c","d","a")
x[1]
x[2]
x[1:4]
x[x>"a"]
u<-x>"a"
u
x[u]

#Subsetting Lists1
x<-list(foo=1:4,bar=0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]

#Subsetting Lists2
x<-list(foo=1:4,bar=0.6,baz="hello")
x[c(1,3)]

#Subsetting Lists3
x<-list(foo=1:4,bar=0.6,baz="hello")
name<-"foo"
x[[name]]
x$name
x$foo

#Subsetting Nested Elements of a List
x<-list(a=list(10,12,14),b=c(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]

#Subsetting a Matrix1
x<-matrix(1:6,2,3)
x[1,2]
x[2,1]
x[1,]
x[,2]

#Subsetting a Matrix2
x<-matrix(1:6,2,3)
x[1,2]
x[1,2,drop=FALSE]

#Subsetting a Matrix3
x<-matrix(1:6,2,3)
x[1,]
x[1,,drop=FALSE]

#Partial Matching
x<-list(aadvark=1:5)
x$a
x[["a"]]
x[["a",exact=FALSE]]
x<-c(1,2,NA,4,NA,5)
bad<-is.na(x)
x[!bad]

#Removing NA Values1
x<-c(1,2,NA,4,NA,5)
y<-c("a","b",NA,"d",NA,"f")
good<-complete.cases(x,y)
good
x[good]
y[good]

#Removing NA Values2
airquality[1:6,]
good<-complete.cases(airquality)
airquality[good,][1:6,]

#Vectorized Operations
x<-1:4; y<-6:9
x+y
x>2
x>=2
y==8
x*y
x/y

#Vectorized Matrix Operations
x<-matrix(1:4,2,2);y<-matrix(rep(10,4),2,2)
x*y
x/y
x%*%y

#if else
y<--1
y
if (y < 10) {
  print("y is less than 10")
} else if(y==10){
  print("y is equal to 10")
} else{
  print("y is greater than 10")
}

#FOR Loop
x <- c("apples", "oranges", "bananas", "strawberries")
#for (i in x){ print(x[i])}
for (i in 1:4) print(x[i])
for (i in seq(x)) print(x[i])

#NESTED FOR
m <- matrix(1:10, 2,5)
m
for (i in seq(nrow(m))) {
  for (j in seq(ncol(m))) {
    print(m[i, j])
  }
}

#WHILE
i <- 1
while (i < 10) {
  print(i)
  i <- i + 1
}

#REPEAT AND BREAK
v <- c("Hello","loop")
cnt <- 2
repeat {
  print(v)
  cnt <- cnt + 1
  
  if(cnt > 5) {
    break
  }
}

v<-0
repeat{
  print(v)
  v<-v+1
  if(v==5){
    break
  }
}

for (i in 1:20) {
  if (i%%2 == 1) {
    print()
    next
  } else {
    print(i)
  }
}

data<-read.csv("C:\\Users\\RM A-225\\Documents\\Midterm_Rep\\Seatwork Midterm\\midetrmseatwork_data.csv")
data



sub<-subset(data)
sub

if(sub[1:153,"Ozone"]>25&sub[1:153,"Temp"]>70){
  data2<-sub[,"Wind"]
}

apply(data2,2,mean)

for(i in 153)
if(data[i,"Ozone"]>25)
  if(data[i,"Temp"]>70){
    data2=data
  }
subset(data2,,"Temp")

sub=subset(data,Ozone>25&Temp>70,select=Wind)
apply(sub,2,mean)

install.packages("imager")
install.packages("magick")
library(imager)
#file <- system.file('C:\\Users\\RM A-225\\Documents\\tictac.jpeg',package='imager')

#1
library(jpeg)
library(imager)

showLOCimg<-function(addr){
  library(imager)
  image <- load.image(addr)
  plot(image)
}
showLOCimg('C:/Users/Public/Pictures/Sample Pictures/Chrysanthemum.jpg')

showURLimg<-function(addr){
  library(magick)
  image_read(addr)
}
showURLimg("https://upload.wikimedia.org/wikipedia/en/8/8f/MiddleEarthShadowOfWar.jpg")

#2.1
imgResize<-function(img,wid,hei,filename){
  load<-load.image(img)
  y <- resize(load,wid,hei)
  plot(y)
  x<-"C:/Users/RM A-225/Documents/augmented_images/"
  savefile<-paste(x,filename)
  save.image(image,savefile)
}
imgResize('C:/Users/Public/Pictures/Sample Pictures/sotrnew.jpg',25,25,"resize.jpg")


#2.2
grayimg<-function(addr,grey=TRUE){
  library(imager)
  image <- load.image(addr)
  if(grey==TRUE){
    gimage<-grayscale(image)
    plot(gimage)
    }
  else{
    plot(image)
  }
}
grayimg('C:/Users/Public/Pictures/Sample Pictures/Chrysanthemum.jpg',FALSE)
grayimg('C:/Users/Public/Pictures/Sample Pictures/Chrysanthemum.jpg',TRUE)

#2.3
rotImg<-function(addr, deg){
  image<-image_read(addr)
  image_rotate(image,deg)
}
rotImg('C:/Users/Public/Pictures/Sample Pictures/SOTR.png',90)

#3
saveImg<-function(addr,filename){
  library(imager)
  image <- load.image(addr)
  x<-"C:/Users/RM A-225/Documents/augmented_images/"
  savefile<-paste(x,filename)
  save.image(image,savefile)
}
dis_photo<-load.image('C:/Users/Public/Pictures/Sample Pictures/Chrysanthemum.jpg')
resized<-resize(dis_photo,25,25)
saveImg(resized,"try4.jpg")

install.packages("argparse")
install.packages("simplejson")
install.packages("rPyhton")
install.packages("devtools")
library(devtools)
library(argparse)
library(reticulate)
os<-import("os")
py_install("pandas")

parser <- ArgumentParser(description='Process some integers')
parser$add_argument('integers', metavar='N', type="integer", nargs='+',
                    help='an integer for the accumulator')
parser$add_argument('--sum', dest='accumulate', action='store_const',
                    const='sum', default='max',
                    help='sum the integers (default: find the max)')
parser$print_help()
# default args for ArgumentParser()$parse_args are commandArgs(TRUE)
# which is what you'd want for an Rscript but not for interactive use
args <- parser$parse_args(c("--sum", "1", "2", "3")) 
accumulate_fn <- get(args$accumulate)
print(accumulate_fn(args$integers))



install.python(page_with_download_url = "https://www.python.org/downloads/windows/version_number = 3")














################################################################
# Copyright (c) 2012-2014 Trevor L. Davis
# Copyright (c) 2014 Paul Gilbert
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

#' Tests whether the python command is sufficient
#'
#' \code{is_python_sufficient} checks whether a given python binary has all the
#' desired features (minimum and/or maximum version number and/or access to
#' certain modules).
#'
#' @param path The path to a given python binary.  
#'      If binary is on system path just the binary name will work.
#' @param minimum_version The minimum version of python it should be.  
#'      Should be a string with major and minor number separated by a '.'.
#'      If left NULL won't impose such a restriction.  
#' @param maximum_version The maximum version of python it should be. 
#'      Should be a string with major and minor number separated by a '.'.
#'      If left NULL won't impose such a restriction.
#' @param required_modules Which modules should be required.  
#'      Can use a single "|" to represent a single either-or requirement like "json|simplejson".
#'      If left NULL won't impose such a restriction.
#' @return \code{TRUE} or \code{FALSE} depending on whether the python binary met all requirements
#' @export
is_python_sufficient <- function(path, minimum_version=NULL,
                                 maximum_version=NULL, required_modules=NULL) {
  python_code <- vector("character")
  if(!is.null(required_modules)) {
    import_code <- .create_import_code(required_modules)
    python_code <- append(python_code, import_code)
  }
  version_code <- .create_version_checking_code(minimum_version, maximum_version)
  python_code <- append(python_code, version_code)
  ok_message <- "Everything worked out okay"
  python_code <- append(python_code, paste("print(", shQuote(ok_message), ")", sep=""))
  tryCatch({
    output <- system(path, intern=TRUE, input=python_code, ignore.stderr=TRUE)
    any(grepl(ok_message, output))
  }, 
  warning = function(w) { 
    # qpath <- sQuote(path)
    # warning(qpath, 
    #     "Doesn't seem to have required modules or is of insufficient version")
    FALSE
  },
  error = function(e) {
    FALSE
  })
}

#' Find a suitable python cmd or give error if not possible
#'
#' \code{find_python_cmd} finds a suitable python cmd or raises an error if not possible
#'
#' @inheritParams is_python_sufficient
#' @param error_message What error message the user will see if couldn't find a sufficient python binary.
#'     If left NULL will print out a default message.
#' @return The path to an appropriate python binary.  If such a path wasn't found then it will throw an error.
#' @examples 
#'      \dontrun{
#'              find_python_cmd()
#'              find_python_cmd(minimum_version='2.6', maximum_version='2.7')
#'              find_python_cmd(required_modules = c('argparse', 'json | simplejson'))
#'      }
#' @seealso \code{\link{can_find_python_cmd}} for a wrapper which doesn't throw an error
#' @export
find_python_cmd <- function(minimum_version=NULL, maximum_version=NULL,
                            required_modules=NULL, error_message=NULL) {
  python_cmds <- c(getOption("python_cmd", ""), "python", Sys.getenv("PYTHON", ""), 
                   sprintf("python%.1f", c(seq(4.9, 2.0, by=-0.1))), 
                   "python4", "python3", "python2", "pypy",
                   Sys.getenv("PYTHON4", ""), Sys.getenv("PYTHON3", ""), 
                   Sys.getenv("PYTHON2", ""), sprintf("C:/Python%s/python", c(49:20)))
  python_cmds <- unique(python_cmds)
  python_cmds <- Sys.which(python_cmds)
  python_cmds <- python_cmds[which(python_cmds != "")]
  for(cmd in python_cmds) {
    if(is_python_sufficient(cmd, minimum_version, maximum_version, required_modules)) { 
      return(cmd)
    }
  }
  if(exists('py_discover_config', where=asNamespace('reticulate'), mode='function')) { # Fall back on reticulate if can't find a suitable command
    python_cmds <- reticulate::py_discover_config()$python_versions
    for(cmd in python_cmds) {
      if(is_python_sufficient(cmd, minimum_version, maximum_version, required_modules)) { 
        return(cmd)
      }
    }
  }
  if(is.null(error_message)) { error_message <- paste("Couldn't find a sufficient Python binary.",
                                                      "If you haven't installed the Python dependency yet please do so.",
                                                      "If you have but it isn't on the system path (as is default on Windows) please add it to path",
                                                      "or set options('python_cmd'='/path/to/binary') ",
                                                      "or set the PYTHON, PYTHON2, or PYTHON3 environmental variables.",
                                                      if(!is.null(minimum_version)) paste('Python must be at least version', minimum_version),
                                                      if(!is.null(maximum_version)) paste('Python must be at most version', maximum_version),
                                                      if(!is.null(required_modules)) paste('Python must have access to the modules:', 
                                                                                           paste(required_modules, collapse=', ')))}
  stop(error_message)
}
#' Determines whether or not it can find a suitable python cmd 
#'
#' \code{can_find_python_cmd} runs \code{find_python_cmd} and returns whether it could find a suitable python cmd.  If it was successful its output also saves the found command as an attribute. 
#'
#' @inheritParams find_python_cmd
#' @param silent Passed to \code{try}, whether any error messages from \code{find_python_cmd} should be suppressed
#' @return \code{TRUE} or \code{FALSE} depending on whether \code{find_python_cmd} could find an appropriate python binary.
#'     If \code{TRUE} the path to an appropriate python binary is also set as an attribute.
#' @examples 
#'      did_find_cmd <- can_find_python_cmd()
#'      python_cmd <- attr(did_find_cmd, "python_cmd")
#' @seealso \code{\link{find_python_cmd}}
#' @export
can_find_python_cmd <- function(minimum_version = NULL,
                                maximum_version = NULL, required_modules = NULL, 
                                error_message = NULL, silent = FALSE) {
  python_cmd <- try(find_python_cmd(minimum_version = minimum_version,
                                    maximum_version = maximum_version,
                                    required_modules = required_modules,
                                    error_message = error_message),
                    silent = silent)
  if(inherits(python_cmd, "try-error")) {
    r <- FALSE
  } else {
    r <- TRUE
    attr(r, 'python_cmd') <- python_cmd
  }
  r
}

# Create appropriate module import code
.create_import_code <- function(required_modules) {
  import_code <- vector("character")
  for(module in required_modules) {
    if(grepl("\\|", module)) {
      module <- gsub(" ", "", module)
      module <- strsplit(module, "\\|")[[1]]
      import_code <- append(import_code, 
                            c("try:", 
                              paste("    import", module[1]),
                              "except ImportError:", 
                              paste("    import", module[2])))
    } else {
      import_code <- append(import_code, paste("import", module))
    }
  }
  import_code
}

# Create appropriate version checking code
.create_version_checking_code <- function(minimum_version = NULL, maximum_version = NULL) {
  if(is.null(minimum_version) && is.null(maximum_version)) 
    return(c())
  else {
    version_code <- c("import sys")
  }
  if(!is.null(minimum_version)) {
    min_version <- strsplit(minimum_version, '\\.')[[1]]
    major = min_version[1]
    minor = min_version[2]
    version_code <- append(version_code, 
                           c(paste("if sys.version_info.major <", major, 
                                   ": raise Exception('Major version too low')"),
                             paste("if sys.version_info.major ==", major, 
                                   "and sys.version_info.minor <", minor, 
                                   ": raise Exception('Minor version too low')")))
  }
  if(!is.null(maximum_version)) {
    max_version <- strsplit(maximum_version, '\\.')[[1]]
    major = max_version[1]
    minor = max_version[2]
    version_code <- append(version_code, 
                           c(paste("if sys.version_info.major >", major, 
                                   ": raise Exception('Major version too high')"),
                             paste("if sys.version_info.major ==", major, 
                                   "and sys.version_info.minor >", minor, 
                                   ": raise Exception('Minor version too high')")))
  }
  version_code
}

install.packages("conda")