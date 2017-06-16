#####################################################
#                  DATA FRAMES                      #
#####################################################

###########Slide 48

kids <- c("Jack","Jill")
ages <- c(12,10)
d <- data.frame(kids,ages, stringsAsFactors=FALSE)
d # matrix-like display

##########slide 49

d[[1]]

d$kids

# Referencing like we did with matrices
d[,1]
d[2,]
str(d)

#########Slide 50



head(mtcars)

# Also try summary command
str(mtcars)


#########Slide 51 (subsetting using row and column numbers)

# Print the first row of the data
mtcars[1,]

# Subset the 2nd to 5th observation 
mtcars[2:5,]

# Subset the 2nd to 5th observation and only keep the first 3 columns
mtcars[2:5,1:3,drop=FALSE]

head(mtcars$cyl)


#########Slide 52 (Subset Function)

# Using subset for keeping variables
mtcars_sub<-subset(mtcars,select=c(mpg,cyl))
head(mtcars_sub)

# Using subset for dropping variables
mtcars_sub2<-subset(mtcars, select=-c(mpg))

head(mtcars_sub2)

#########Slide 53 (Filter using subset function)
mtcars[mtcars$mpg>30,]

subset(mtcars,gear==5)

mtcars[mtcars$gear==5 & mtcars$mpg>25,]

subset(mtcars,name %in% c("Fiat 128"))

#########Slide 54 (Dataframes binding)

##########rbind function
add_1<-c(5,140,120,3.9,2.6,16.76,1,1,3,3)
add_1


mtcars<-rbind(mtcars,add_1) 
dim(mtcars)


rownames(mtcars)[33]<-"New entry"
tail(mtcars,2)

##########cbind function
#runif generates random numbers

col_add<-runif(nrow(mtcars))
mtcars<-cbind(mtcars,col_add)
head(mtcars,3)

#########Slide 55 (Column names and row names of dataframe)
name<-rownames(mtcars)
mtcars<-cbind(name,mtcars)
head(mtcars,2)

names(mtcars)
colnames(mtcars)
rownames(mtcars)

apply(mtcars,2,max)
apply(mtcars,1,max)



#########Slide 56 (Merge dataframes)

kids <- c("Jack","Jill","John")
ages <- c(12,10,13)
d <- data.frame(kids,ages,stringsAsFactors=FALSE)
d

States<-c("NY","TX","CA")
d2<- data.frame (kids,States,stringsAsFactors=FALSE)
d2

merged_d<-merge(d,d2)
merged_d



#####################################################
#                     FACTORS                       #
#####################################################

#########Slide 60 (Factors Introduction)

data=c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata=factor(data)
fdata


data=c("k","l","l","k","a","k","k","a")
data

data1=factor(data)
data1


#########Slide 61 (Changing Factor Levels)

data=c("k","l","l","k","a","k","k","a")
factor(data)

factor(data, levels=c("l","a","k"))

data=c(1,2,2,3,1,2,3,3,1,2,3,3,1)


rdata=factor(data,labels=c("I","II","III"))
rdata





