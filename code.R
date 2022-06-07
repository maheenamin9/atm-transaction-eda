###################################
# Project
###################################

setwd("E:\\practice\\Project")
library(ggplot2)
library(plyr)
library(ggpmisc)


############# Function to Read Data Frame #################
readData <- function(){
  myD <- read.csv(file = "E:\\practice\\Project\\Dataset_2.csv", header = TRUE)
  #print(head(myD))
  return(myD)
}

graph1 <- function(myData){
   
   # facet
   myplot <- ggplot(myData) +
   geom_col(aes(myData$atm_name, myData$weekday, fill=myData$atm_name)) +
   facet_wrap(~myData$weekday, ncol=1, strip.position = "left") + 
   labs(x=NULL, y=NULL, title = "Transactions of different ATM's in weekdays") #+
   # annotate("text", label = "Test", size = 4, x = 100000, y = 120000)
   #  scale_color_identity(name = "mylegend") # +
  
   print(myplot)
}


graph2 <- function(myData){
   
   # facet
   myPlot <- ggplot(myData) +
   geom_col(aes(myData$atm_name, myData$working_day, fill=myData$atm_name)) +
   facet_wrap(~myData$working_day) +
   labs(x=NULL, y=NULL, title="Transaction of different ATM's in working day as well as holiday") #+
   #annotate("text", label="nckjs")
   
   print(myPlot)
}


graph3 <- function(myData){
   
   # bar graph  
   myplot<-ggplot(myData, aes(x=myData$atm_name, y=myData$No_Of_Withdrawals)) +
     geom_col(stat = "count", color="royal blue") +
     labs(x="ATM's Name",y="Withdrawals", title="Withdrawals of different ATM's") +
     theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
     theme(panel.border = element_blank()) +
     theme(axis.line = element_line()) +
     annotate("text", x=Inf, y=2500, label="2018CS670", hjust=1.1, vjust=-21.5, col="red", fontface="bold")
   
    print(myplot)

}


graph4 <- function(myData){
   
   # line graph
   plot(myData$no_of_cub_card_withdrawals, type="l", col="dark green", xlab="Number of times, ATM is used", ylab="No of withdrawals", main="No of Withdraws with XYZ bank card vs other bank card")
   lines(myData$no_of_other_card_withdrawals, col = "orange")
   legend(9000, 350, legend=c("XYZ card", "Other card"),
          col=c("dark green", "orange"), lty=1:1, cex=0.8, bg='lightblue')
   mtext("2018CS670", side=3, col="red")
}


graph5 <- function(myData){
   
   #line graph
   plot(myData$amount_withdrawn_cub_card, type="l", xlab="Number of times, ATM is used", ylab="Amount withdrawn", main="Amount withdrawn using XYZ bank card vs other bank card") 
   lines(myData$amount_withdrawn_other_card, col = "Royal blue") 
   legend(9000, 1920000, legend=c("XYZ card", "Other Card"),
          col=c("black", "Royal blue"), lty=1:1, cex=0.8, bg='lightblue')
   mtext("2018CS670", side=3, col="red")
}

createScatter<-function(myData){
   
   # for linear equation
   myPlot<-ggplot(myData, aes(x=no_of_cub_card_withdrawals, y=no_of_other_card_withdrawals)) + geom_point() +
      geom_smooth(method = 'lm', se = TRUE, level = 0.95, linetype="solid", color = "red", fill = "blue") +
      stat_poly_eq(formula = y~x,
                   aes(label = paste(..eq.label..,..rr.label.., sep = "~~~")),
                   parse = TRUE, color = "Blue") +
      labs(x="Number of withdraws using XYZ bank card",y="Number of withdraws using other bank card", title="Withdrawals using XYZ card verses other card") +
      theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
      theme(panel.border = element_blank()) +
      theme(axis.line = element_line()) +
      annotate("text", x=350, y=280, label="2018CS670", hjust=1.1, vjust=-1.1, col="red", fontface="bold")
   
   print(myPlot)
   
}

main <- function(){
   
   dat <- readData()
   #graph1(myData = dat)
   #graph2(myData = dat)
   #graph3(myData = dat)
   #graph4(myData = dat)
   #graph5(myData = dat)
   createScatter(myData = dat)

   print("Done")
  
}

main()
