# 파일 위치
setwd("D:\\bigdata_pcj\\06. Rstudio\\실습파일\\04차시 실습파일")

# 파일 불러오기 sep
df <- read.csv("Medal.csv", fileEncoding = "euc-kr")
df

df$한국
df$중국
df$이탈리아

# barplot
barplot(df$한국)
barplot(df$중국)
barplot(df$이탈리아)

# as.matrix(dataframe) dataframe을 행렬로 가져와서
# beside 데이터를 쌓아올리지 않고 옆으로 나열
# ylim : y축 최대값
barplot(as.matrix(df), main = "금메달수", ylab = "수량", beside = T, col = rainbow(3), ylim = c(0,6))

# (8,6)위치범례 그리기 cex값은 범례 크기 fill값은 위 barchart의 col과 같아야한다.(저수준 그래프)
legend(8,6,c("금","은","동"), cex=1, fill = rainbow(3))

hist(df$한국)
