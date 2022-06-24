library(ggplot2)
setwd("D:\\bigdata_pcj\\06. Rstudio\\실습파일\\06차시 실습파일")

# 엑셀 불러오기
install.packages("readxl")
library(readxl)
basic <- as.data.frame(read_excel("사과당도.xlsx"))
basic

applegraph <- ggplot(data = basic, aes(x = 사과, y = 당도, fill = 색깔))
applegraph

# aes: 색상, 크기 같은 외적요소
applegraph <- ggplot(data = basic, aes(x = 사과, y = 당도, fill = 색깔)) +
    geom_point(aes(colour=색깔))

# geom_point: 점, 선, 모양 같은 기하학적 요소
applegraph <- ggplot(data = basic, aes(x = 사과, y = 당도, fill = 색깔)) + 
    geom_point(aes(colour=색깔, shape=사과, size=3))
applegraph
