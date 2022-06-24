setwd("D:\\bigdata_pcj\\06. Rstudio\\실습파일\\06차시 실습파일")
do <- read.csv("육군신체지수_6_수정.csv", fileEncoding="euc-kr")
head(do, 30)

do$키

# pch 모양
plot(do$키, do$몸무게, main = "육군신체치수", data=do, pch=22, las=1, xlab="키",
     ylab="몸무게")

# cex 크기
points(do$키, do$몸무게, cex=.2, col="dark blue")
f = lm(do$몸무게 ~ do$키)
abline(f)
summary(f)
