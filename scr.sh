#!/bin/bash
#https://github.com/LondonMarket/Global-Stock-Symbols/blob/main/nasdaq_1668526380140.csv
if [[ $# != 1 ]]; then
	echo "Should be only 1 input"
	echo "Example : tsla"
	exit 1
fi
# Now we will upload the symbols from symbols.txt
SYMBOLS=()
function getSymbols(){
	FILE_NAME_SYMBOLS="symbols.txt"
	# we will append to SYMBOLS every symbol from FILE_NAME_SYMBOLS
	exec < "$FILE_NAME_SYMBOLS"
	while read LINE; do
		SYMBOLS+=($LINE)
	done 	
}
BASE_URL_DOWNLOAD="https://query1.finance.yahoo.com/v7/finance/download/" # This will be the url to download informations about a stock
# Date,Open,High,Low,Close,Adj Close,Volume
# c1	c2   c3   c4  c5   c6         c7
# 2024-04-15,170.248001,170.690002,164.399994,164.995300,164.995300,51706369
# 


function proccesStock(){
    STOCK_NAME="$1"
    URL_TO_BE_DOWNLOADED="$BASE_URL_DOWNLOAD$STOCK_NAME"
    curl -s "$URL_TO_BE_DOWNLOADED" > "$STOCK_NAME.csv"
    echo "The name of the file with information is: $STOCK_NAME.csv"
    SECOND_ROW=$(sed -n '2p' "$STOCK_NAME.csv")
    IFS=',' read -r c1 c2 c3 c4 c5 c6 c7 <<< "$SECOND_ROW"
    echo "Date : $c1"
    echo "Open : $c2"
    echo "High : $c3"
    echo "Low : $c4"
    echo "Close : $c5"
    echo "Adjusted close : $c6"
    echo "Volume : $c7"
}


function main()
{
	STOCK_NAME="$1" # Make it upper case because thats what i have
	# Lets check if it valid
	getSymbols ""
	for SYMBOL in "${SYMBOLS[@]}"; do	
		STOCK_NAME_UPP="${STOCK_NAME^^}"	
		if [[ $SYMBOL = $STOCK_NAME_UPP ]]; then
			echo "$STOCK_NAME"
			proccesStock "$STOCK_NAME"	
			exit 0	
		fi
	done	
	# Now to make a little menu 
	echo "Stock name not found - check - nasdaq_1668526380140.csv"
	exit 1
}

main "$1"
