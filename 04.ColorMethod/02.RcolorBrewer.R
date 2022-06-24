# RcolorBrewer 패키지 설명
library(RColorBrewer)
# 팔렛트를 색깔별로 볼 수 있다.
display.brewer.all()
# 저장된 팔랫트 리스트를 볼 수 있다.
brewer.pal.info

par(mfrow=c(1,3))
display.brewer.all(type="div")
display.brewer.all(type="seq")
display.brewer.all(type="qual")

# RcolorBrewer 함수 실습
data1 <- brewer.pal(5, "Greens")
data1
data2 <- brewer.pal(5, "Reds")
data3 <- brewer.pal(5, "PuOr")
data4 <- brewer.pal(5, "PiYG")

# 그림을 2x2 로 나타낸다.
par(mfrow=c(2,2))

# 데이터 넣기 및 pie로 그래프 나타내기
korea<-c(0.35, 0.2, 0.15, 0.12, 0.08, 0.05)
names(korea) <- c("공룡", "토끼", "사자", "고양이", "돼지")
pie(korea, col=data1, main="pie(아이들이 좋아하는 동물친구 5")
names(korea) <- c("공룡", "토끼", "사자", "고양이", "돼지")
pie(korea, col=data2, main="pie(아이들이 좋아하는 동물친구 5")
names(korea) <- c("공룡", "토끼", "사자", "고양이", "돼지")
pie(korea, col=data3, main="pie(아이들이 좋아하는 동물친구 5")
names(korea) <- c("공룡", "토끼", "사자", "고양이", "돼지")
pie(korea, col=data4, main="pie(아이들이 좋아하는 동물친구 5")
