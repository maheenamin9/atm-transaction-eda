# Exploratory_Data_Analysis-on-ATM_transaction-dataset

This shows the performance of Exploratory Data Analysis (EDA) on the ['ATM Transaction'](ATM_transaction_dataset.csv) dataset. I draw 5 graphs using **R** language and explaination of those graphs are as follows:


1. [Bar graph](graph1.jpg) shows transaction of different ATMs which is done on holiday as well as working days. Here fill indicates names of different ATMs. A clear difference between holiday bars and workingDay bars represents that the users of all the ATMs prefer to perform transaction on working days as compared to holidays. On both holiday and working day, KK Nagar ATM have most transactions amongst all while Airport ATM and Mount Road ATM have least transactions.


2. [Line graph](graph2.jpg) shows the money withdrawn using XYZ bank card verses another bank (i.e. other than XYZ) card. The horizontal axis represents number of times different ATMs are used. The vertical axis shows amount drawn. Black lines indicate amount withdrawn using XYZ ATM while blue lines show amount withdrawn using another bank cards. Although the users using another (i.e. other than XYZ) card also withdraw a lot of money but comparatively, XYZ card have maximum amount withdrawn but at last, withdraws of other bank card is greater than using XYZ card. Customers with XYZ card have withdrawn amount of 15lakh or more while no user using another cards have withdrawals of 15lakh or above.


3. [Bar graph](graph3.jpg) shows transaction of different ATMs in all weekdays. Here fill indicates names of different ATM. It can be observed that most of transaction occurred on Sunday, here it can easily be guessed that people usually free on Sunday so they prefer to perform transaction on Sunday. While Wednesday have a little bit less number of transactions as compared to Sunday. While Friday have least number of transaction and Monday have a little bit more number of transaction as compared to Friday.


4. [Bar graph](graph4.jpg) shows the no of withdrawals which is done from different ATMs. The x axis shows the name of ATMs and y axis indicates the no of withdrawals. It can be clearly seen that KK Nagar ATM have frequently most number of Withdrawals amongst all other ATMs. After that, Mount Road ATM have. While Airport ATM and Big Street ATM have relatively less number of withdrawals. It means people prefer to use KK Nagar ATM more than any other ATMs for withdrawal purposes.


5. [Line graph](graph5.jpg) shows the number of withdrawn using XYZ bank card verses other bank cards. The horizontal axis represents number of times different ATMs are used. The vertical axis shows number of withdrawals. Green lines indicate number of withdrawals using XYZ card while green lines show no of withdrawals using other bank cards. At start, the rate of transaction using XYZ card and other cards are same but there is a sudden increase in rate of using XYZ card after 2000th time of ATM usage and its rate remain greater than using another bank cards. At last, withdrawals of using another card is greater than using XYZ card.


6. [Scatter plot](graph6.jpg) shows the comparison between No of Withdrawals using XYZ bank card and No of other Withdrawals using another bank (i.e., other than XYZ) card. Solid Red line describes the linear regression line and a smaller blue area covering the red line tells the confidence interval which is 0.95.
As this line collectively with blue area ignore massive number of points showing that this model is not fit. In addition to this, the value of R2 is 0.04 too. 
