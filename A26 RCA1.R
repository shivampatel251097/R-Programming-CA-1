
#case4
NEWMTCARS=mtcars
NEWMTCARS
mp=c(NEWMTCARS$mpg)
mp
p=subset(NEWMTCARS,mp<=20)
p$mp='Low'
p
q=subset(NEWMTCARS,mp>20 && mp<25)
q
q$mp='Medium'
q
r=subset(NEWMTCARS,mp>=25)
r
r$mp='Good'
r
NEWMTCARS=rbind(p,q,r)
NEWMTCARS=cbind(mp,NEWMTCARS)
NEWMTCARS
MILEAGE=factor(c('LOW','MEDIUM','GOOD'))
for(val in mtcars$mp){
  if(val<20){
    val='LOW'
  }else if(val>20 && val<25){
    val='MEDIUM'
    }else{
      val='Good'
    }
}
NEWMTCARS$mp
mtcars$mp

#Case 1

calldata=data.frame(CallerPhoneNumber=c(9041,9888,9646,7777,8899),Callername=c('Aniket','Manisha','Raman','Rajnikant','Na'),CallerLocation=c('Delhi','Chandigarh','Delhi','Ap','Na'),CallDuration=c(9,15,30,20,0),stringsAsFactors = F)
calldata
summary(calldata)
gender=factor(c('M','F','M','F','M'))
levels(gender)
problempriority=factor(c('CRITICAL','NORMAL','MODERATE','NORMAL','MODERATE'))
levels(problempriority)
calldata=cbind(calldata,gender)
calldata=cbind(calldata,problempriority)
calldata$Callername[3]='Daman'
calldata
v1=c('Caller 1','Caller 2','Caller 3','Caller 4','Caller 5')
row.names(calldata)=v1
calldata$Callername[3]='Daman'






#case 3
titanic_train=read.csv(file.choose(),sep=',',header=T)
summary(titanic_train)
ncol(titanic_train)
nrow(titanic_train)
titanic_test=read.csv(file.choose(),sep=',',header = T)
summary(titanic_test)
nrow(titanic_test)
ncol(titanic_test)
titanic_gender=read.csv(file.choose(),sep=',',header=T)
summary(titanic_gender)
nrow(titanic_gender)
ncol(titanic_gender)
titanic_data=cbind(titanic_test,Survived=titanic_gender$Survived)
dim(titanic_data)
titanic_data=rbind(titanic_train,titanic_data)
titanic_data
dim(titanic_data)
#Cleaning the data
titanic_data=na.omit(titanic_data) # Na values are removed
dim(titanic_data)
summary(titanic_data)



#case 5
m=matrix(c('Dhoom 1',20,'Dhoom 2',40,'Dhoom 3',80,'Golmal 1',50,'Golmal 2',65,'Golmal 3',90,'Housefull 1',30,'Housefull 2',65,'Housefull 3',45),nrow=9,ncol=2,byrow=T)
m
as.numeric(m)
x[] <- as.integer(m)




#case 2
patientbiodata=data.frame(PatientName=c('Aman','Akash'), PatientID=c('P101','P105'), PatientGender=factor(c('M','M')), PatientAge=c(20,22), PatientJob=c('Consultant','Army'), PatientJobhours=c(10,24)) 
Patientmedicalhistory=data.frame(PatientID=c('P101','P105'), BloodGroup=c('A+','AB'), BloodSugarLevel=c('High ','LOW'), BloodPressure=c('High ','LOW'), HeartBeat=c(150,160), ESI=c(5,10), RBCCount=c(100000,500000), WBC=c(100000,555550) Count=c(10,20)) 
PARENTMEDICALHISTORY=data.frame(PatientID=c('P101','P105'), FatherName=c('Vijay','Kailash'), BloodGroup=c('B+','AB'), AvgBloodsugar=c(50,60), AvgBloodPressure=c(80,90))
P101=list(patientbiodata,Patientmedicalhistory,PARENTMEDICALHISTORY)
P105=list(patientbiodata,Patientmedicalhistory,PARENTMEDICALHISTORY)
P105[patientbiodata]
p105[Patientmedicalhistory]
p101[PARENTMEDICALHISTORY]
