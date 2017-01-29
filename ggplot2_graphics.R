# 先安裝：install.packages("ggplot2")
# 每開啟程式須先執行 library(ggplot2)
# 看新的資料庫：data()
# 期中作業：使用 ggplot2 與任意資料繪製散佈圖，線圖，直方圖，盒鬚圖與長條圖。
# 可參考資料：http://docs.ggplot2.org/current/index.html


# 散佈圖
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point() +
  ggtitle("Petal Length vs. Petal Width") +
  xlab("Petal Length") +
  ylab("Petal Width") +
  geom_smooth(aes(x = Petal.Length, y = Petal.Width), inherit.aes = FALSE, method = "lm") + 
  # 補充：se = FALSE 取消線性下方陰影。
  theme_bw() 

# 線圖
ggplot(economics, aes(x = date, y = psavert)) +
  ggtitle("Personal Savings Rate", subtitle = "from US by Time") +
  xlab("Date") +
  ylab("Personal Savings Rate") +
  geom_line(colour = "pink") +
  geom_point(colour = "red", size = 0.3)

# 盒鬚圖
airquality$Month <- as.factor(airquality$Month)
ggplot(airquality, aes(x = Month, y = Temp)) +
  geom_boxplot(fill = "white", colour = "#3366FF", outlier.colour = "red", outlier.shape = 1) +
  ggtitle("Deviation of Daily Temperature", subtitle = "in NY, May to Sep. in 1973") +
  ylab("Temperature (degrees F)")

# 直方圖
ggplot(trees, aes(x = Height)) +
  ggtitle("Frequency of Trees' Height") +
  xlab("Height") +
  geom_histogram(bins = 10)

# 長條圖
ggplot(iris, aes(x = Sepal.Length)) +
  geom_bar(aes(fill = Species)) +
  ggtitle("Frequency of Iris' Sepal Length", subtitle = "in different species")
ggplot(iris, aes(x = Petal.Length)) +
  geom_bar(aes(fill = Species))+
  ggtitle("Frequency of Iris' Petal Length", subtitle = "in different species")
ggplot(iris, aes(x = Sepal.Width)) +
  geom_bar(aes(fill = Species))+
  ggtitle("Frequency of Iris' Sepal Width", subtitle = "in different species")
ggplot(iris, aes(x = Petal.Width)) +
  geom_bar(aes(fill = Species))+
  ggtitle("Frequency of Iris' Petal Width", subtitle = "in different species")
