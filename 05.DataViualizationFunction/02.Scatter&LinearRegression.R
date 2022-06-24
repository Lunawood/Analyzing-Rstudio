Orange
help(Orange)
plot(Orange)

# las: x, y축을 가로로 볼지 세로로 볼지 정함
# subset: Tree 데이터값 중 3을 갖는 것만 표시
plot(Orange$circumference ~ Orange$age, xlab="Tree age (days since 1968/12/31)", 
     ylab="Tree circumference (mm)", las=1, data=Orange, subset=Tree==3,
     main="Orange tree data and fitted model (Tree 3 only)")

plot(circumference ~ age, data = Orange, subset = Tree == 3,
     xlab="Tree age (days since 1968/12/31)",
     ylab="Tree circumference (mm)", las = 1,
     main="Orange tree data and fitted model (Tree 3 only)")
#lm: 단순회귀분석
Aline <- lm(Orange$circumference~Orange$age, data=Orange)
Aline
abline(Aline)
