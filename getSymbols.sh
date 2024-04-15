#!/bin/bash
# # # --------- This file will get the symbols and put them in a file -> symbols.txt
# Symbol,Name,Last Sale,Net Change,% Change,Market Cap,Country,IPO Year,Volume,Sector,Industry
# c1 	c2	c3  c4   c5  c6      c7 	c8	c9	c10	c11	c12	c13
# AAPL,Apple Inc. Common Stock,$153.24,4.96,3.35%,2.65677E+12,United States,1980,17446091,Technology,Computer Manufacturing
touch "symbols.txt"
while IFS="," read -r c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13
do
#	echo "Stock symbol : $c1"
	echo "$c1" >> symbols.txt
done < <(tail -n +2 nasdaq_1668526380140.csv)
