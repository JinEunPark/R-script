noise = c(55.9,63.8,57.2,59.8,65.7,62.7,60.8,51.3,61.8,56.0,66.9,56.8,66.2,64.6,59.5,63.1,60.6,62.0,59.4,67.2,63.6,60.5,66.8,61.8,64.8,55.8,55.7,77.1,62.1,61.0,58.9,60.0,66.9,61.7,60.3,51.5,67.0,60.2,56.2,59.4,67.9,64.9,55.7,61.4,62.6,56.4,56.4,69.4,57.6,63.8)
length(noise)#배열의 길이를 반환
which(noise == 63.8)#배열안에 괄호안에 들어있는 값을 가지는 인덱스를 반환
noise[which(noise == 63.8)]#인덱스에 해당하는 벨류를 반환

mean(noise,na.rm = T)#평균값을 구하는데 결측치를 제외한 평균치를 반환한다 
#결측치는 혼자 존나 튀는 값인데 R에서는 몇을 사용하는지 모르게씀
#산술평균임

median(noise)#중앙값을 반환하는 함수이다
which.max(table(noise))#최빈값을 반환한다
sortNoise<-sort(noise,decreasing = T)#증가되는 값으로 정렬한다.
sortNoise[25]#가운데 값이랑 median이 반환한 값이 다른데 데이ㅓ터가 짝수여서 그럼

getmode<-function(v){
  uniqv<-unique(v)#중복값을 제거후 할당
  uniqv[which.max(tabulate(match(v,uniqv)))]
}
length(unique(noise))#중복된 값을 제거하고 반환하는 함수
getmode(noise)
match(noise, unique(noise))#중복된 값에 같은 인덱스를 매개서 반환
which(noise == noise[9])
unique(noise)[which.max(tabulate(match(noise,unique(noise))))] 
#1 중복값을 제거하지마 않은 noise에서 중복값을 제거한 noise의 각각의 벡터의 원소의 
#위치를반환한다
#2 그중에서 이후에 그 빈도수를 반환한 벡터에서 
#3 가장 큰값의 인덱스를 반화하고 그 이후에 
#4 중복을 제거한 벡터의 값을 출력한다.

var(noise) #분산을 반환하는 함수
sd(noise) # 표준편차를 반환하는 함수


quantile(noise, type=7)#이건 따로 공부해야할 듯
# 사분위 수를 구하려면 전체 값을 4개로 나눈 5개의 값이 반환된다
(IQR <-quantile(noise, type=7)[[4]]- quantile(noise, type =7)[[2]])#75% - 25% 해당하는 값들의 타이가
#iQR이 된다.
(IQRrange<-IQR*1.5)#
(upperoutlier<-quantile(noise,type=7)[[4]]+IQRrange)#upperOutlier의 값이 75% 의 값보다 1.5IQR 큰수임
(bottomOutlier<-quantile(noise,type=7)[[1]]-IQRrange)#bottomOutlier의 값이 25%보다 1.5IQR만큼 작은값이다
(noise[which(upperoutlier< noise)])#upperoutlier보다 튼값을 반환
(noise[which(bottomOutlier>noise)]#bottomlier보다 작은 값을 반환
hist(noise,freq=FALSE, breaks = 10, main="Noise")
#hist(noise, freq=TRUE, breaks = 10, main="Noise")
rug(jitter(noise))
lines(density(noise),col="blue",lty=3)
boxplot(jitter(noise),horiaental=T,col="yellow")
rug(jitter(noise))
par(mfrow=c(1,1))




