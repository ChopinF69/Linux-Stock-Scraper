A command-line script to screen scrape U.S. stock quotes (NYSE, AMEX, NASDAQ).   Takes one argument on the command line: a stock symbol.  Works on linux . 

HOW TO EXECUTE :

chmod +x run.sh
./run.sh "" <- the only parameter will be the stock symbol that you want to get basic information

Example : ./run.sh tsla
Output : 
	tsla
	The name of the file with information is: tsla.csv
	Date : 2024-04-15
	Open : 170.248001
	High : 170.690002
	Low : 161.589996
	Close : 162.419998
	Adjusted close : 162.419998
	Volume : 84060045

Notes:
- Data comes from free source : https://finance.yahoo.com/quote/TSLA
- #https://github.com/LondonMarket/Global-Stock-Symbols/blob/main/nasdaq_1668526380140.csv

