# googleVis를 설치
install.packages("googleVis")

# library로 호출
library(googleVis)

# R프로그램에서 제공하는 데이터 확인하기
Fruits

# 모션차트 함수를 이용하여 년도별 데이터를 나타내기
M1 <- gvisMotionChart(Fruits, idvar = "Fruit", timevar = "Year")
M1

# plot으로 보여기
plot(M1)
################### Adobe Flash Player가 없어짐..

# gvisTable 함수를 사용하여 과일테이블 
tb1 <- gvisTable(Fruits, options = list(height=220))
plot(tb1)

# 날짜로 모션그래프 그리기
M2 <- gvisMotionChart(Fruits, idvar = "Fruit", timevar = "Date",
                      date.format="%Y%m%d")
M2
plot(M2)

# 주 단위로 표시하기
M3 <- gvisMotionChart(Fruits, idvar = "Fruit", timevar = "Date",
                      date.format="%YW%W")
M3
plot(M3)
