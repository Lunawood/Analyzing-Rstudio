setwd("D:\\bigdata_pcj\\06. Rstudio\\실습파일\\05차시 실습파일")

df <- read.csv("한글자.csv", fileEncoding="euc-kr")
df

# y축의 값만 나옴
# ylab : y축 값, ylim: y값 최대값, beside: 축 옆으로 나누기
barplot(as.matrix(df$출간종수), main="한글자 순위", ylab="수랑", beside=T, space=0.2, col=rainbow(10), ylim=c(0,2000))

# x축의 값 표현
barplot(as.matrix(df$출간종수),main="한글자 순위", ylab="수량", xlab="글자", names.arg = df$글자, beside=T, space=0.2,
        col=rainbow(10), ylim=c(0,1500))

# lty: line type 선모양, lwd: 선의 굵기
# a/b/h/v: 각각 절편, 기울기, 수평선일때 y값, 수직선일때x값값
# seq: 0~1500까지 50씩 올라감
abline(h=seq(0,1500,50), lwd=1, col="lightblue", lty=1)

# cex: 범레 크기 지정, pch: 점 모양 지정