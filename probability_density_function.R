mu<-3000
sigma<-80
x1<-2948
x2<-3080
pnorm(x2,mean=mu,sd=sigma)-pnorm(x1,mean=mu , sd=sigma)
#누적 도수 그래프에서 뺀값이 구간 x1,x2에 있을 확률이다
z1<-(x1-mu)/sigma
z2<-(x2-mu)/sigma
pnorm(z2)-pnorm(z1)

#정규 분포로 계산을 진행하기 위해서 변환공식을 적용하고 pnorm값을 서로 빼서 계산에 적용했다.  