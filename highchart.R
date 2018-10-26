# learning rChart in R. start from Oct. 26
# according the advices from 館碩, I start to learn rChart in R to do reactive figures.


# websites: http://rstudio-pubs-static.s3.amazonaws.com/167269_f539cdd7e9d34ad7aa65aa1670dabd70.html
# github demo: https://github.com/ramnathv/rCharts
# http://ramnathv.github.io/rCharts/
# guideline: http://www.rpubs.com/dnchari/rcharts


# highchart函數有個特性就是，當你在指令內新增一個並不存在於這個指令的arument的時候，不會產生error，只會沒顯示效果出來
library(highcharter)
library(rCharts)

# I found that highchart is included in the rCharts, so I decide to install the big rCharts packages
library(devtools)
library(Rcpp)
install_github('ramnathv/rCharts', force= TRUE)



## {title: Line with Focus Chart } =====
data(economics, package = 'ggplot2')
ecm <- reshape2::melt(economics[,c('date', 'uempmed', 'psavert')], id = 'date')
p7 <- nPlot(value ~ date, group = 'variable', data = ecm, type = 'lineWithFocusChart')
#test format dates on the xAxis
#also good test of javascript functions as parameters
#dates from R to JSON will come over as number of days since 1970-01-01
#so convert to milliseconds 86400000 in a day and then format with d3
#on lineWithFocusChart type xAxis will also set x2Axis unless it is specified
p7$xAxis( tickFormat="#!function(d) {return d3.time.format('%b %Y')(new Date( d * 86400000 ));}!#" )
#test xAxis also sets x2Axis
p7

# ================================ #

#now test setting x2Axis to something different
#test format dates on the x2Axis
#test to show %Y format which is different than xAxis
p7$x2Axis( tickFormat="#!function(d) {return d3.time.format('%Y')(new Date( d * 86400000 ));}!#" )
p7

# ================================ #

#test set xAxis again to make sure it does not override set x2Axis
p7$xAxis( NULL, replace = T)
p7

# ======== example END ==== #