# setwd \\ 를 써야한다.
setwd("D:\\bigdata_pcj\\06. Rstudio\\실습파일\\03차시 실습파일")

library(googleVis)

# 데이터 가져오기 fileEncoding을 써야 Error발생x -> csv는 euc-kr를 쓴다.
mise <- read.csv("미세먼지.csv", header=T, fileEncoding = "euc-kr")

# 데이터중 일시 컬럼만 보여준다.
mise$"일시"

# idvar은 대상 timevar은 시간
mise2 <- gvisMotionChart(mise, idvar="지점", timevar = "일시")

plot(mise2)
