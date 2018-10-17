# I started to learn Shiny from Oct. 15 16:40

# useful website: 
# https://programmermagazine.github.io/201309/htm/article6.html
# http://blog.infographics.tw/2016/04/interactive-r-with-shiny/

# examples: http://shiny.rstudio.com/gallery/
# tutorial: http://shiny.rstudio.com/tutorial/

# Shiny的設計目標，是希望讓不懂網頁技術的R使用者，可以用最短的時間，將他們的分析結果呈現在網站上和使用者互動。而且，透過Shiny，開發者只需要懂R的語法，就可以寫網頁了！（完全不用學HTML，完全不用學javascript）

# 比起像是網路原生的 D3.js 、提供線上嵌入的 Tableau 或其它網路服務來說， R的圖表不容易做即時更新，也不容易做到互動查詢。為了克服這幾個弱點， Shiny 出現了 —  專為 R 打造的網路應用框架。

install.packages("shiny")
library(shiny)
runExample("01_hello")

str(pageWithSidebar)
# function (headerPanel, sidebarPanel, mainPanel)  

# shinyapps.io (server)
# http://www.shinyapps.io/
