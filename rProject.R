print(getwd())
setwd("C:/Users/tecyo/OneDrive/Desktop")
listone <- list()
listtwo <- list()
a=read.csv('data1.csv')
for (s in a){
for(v in s){
if(v %in% listone){
	
	i=1
	for (v2 in listone){
		if(v2==v){
			break
		}
	i=i+1	
	}
	h=(listtwo[i])
	newh=as.integer(h)+1
	listtwo[i] <- newh
}
else{
	#get length of list called my_list
	len <- length(listone)
	#append value of 12 to end of list
	listone[[len+1]] <- v
	#get length of list called my_list
	len <- length(listtwo)
	#append value of 12 to end of list
	listtwo[[len+1]] <- as.integer(1)
}
}
}
id=1
for(a in listone){
	if(a==37){
	print("a")
	print(a)
	print(listtwo[id])
	print("End")

}	
id=id+1

}

listTopnums <- list(listone[1])
listTopProps <-list(listtwo[1])
hrep=0
z=1
for( i in 1:14)
	{
	topnum=0
	toprop=0
	index=1
	for(a in listone)
	{
		if(a %in% listTopnums ){}
		else{
		if(as.integer(listtwo[index])>toprop){
			toprop=as.integer(listtwo[index])
			topnum=a
			}
		   }
		index=index+1
	}
	f=paste("order : ",toString(i),sep="")
	f=paste(f," num",sep="")
	f=paste(f,toString(topnum),sep=" : ")
	f=paste(f," -> repetition : ",sep=" ")
	f=paste(f,toString(toprop),sep="")
	f=paste(f," probabilty : ",sep="")
	f=paste(f,toString(toprop/length(listone)),sep="")
	print(f)
	len<-length(listTopProps )
	listTopProps[[len+1]]<-toprop
	listTopnums [[len+1]]<-topnum
	}
