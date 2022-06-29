blood = c("B","A","B","A","A","B","O","A","A","A","O","B","AB","B","AB","AB","A","A","O","AB","O","A","B","O","B","B","A","A","O","A","A","AB","B","B","O","B","B","B","A","AB","A","A","B","O","B","B","O","B","O","B","A","A","AB","A","A")
blood[3:5]#list parsing
table(blood)# make table count amount
cnt = sort(table(blood),decreasing = T) #sorting 내림순으로 쩡렬
prop = prop.table(cnt) #전체에ㅔ 대해서 비율에 대한 테이블로 저장
tbl_blood<-(cbind(cnt,prop) )#con cat count table and prop table
par(mfrow=c(2,1))
slices=c("red","blue","yellow","green")#파이차트를 나타낼 색상
pie(cnt,col = slices, radius = 1, main="blood type")#make a radius graph with
barplot(cnt,col=slices, main="blood type")#막대그래프롤 만든다.
par(mfrow=c(1,1))
