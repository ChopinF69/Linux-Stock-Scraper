```print('MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM')
print('MMMMMMMMMMMMMMWNXKOOONMMMMMMMMMMMMM')
print('MMMMMMMMMMNkl:; .. ,,:lkWMMMMMMMMMM')
print('MMMMMMMMXo' ',......... KMMMMMMMMM')
print('MMMMMMMX..lkO0K0Okxdooc  ;NMMMMMMMM')
print('MMMMMMMx.okkOO0KKK0Okxxd,.:XMMMMMMM')
print('MMMMMMMx.oxkkOO0KK0Okxxo, .KMMMMMMM')
print('MMMMMMM0.cxxdollddlllooo, .XMMMMMMM')
print('MMMMMMMWdcoc:;;,ll,;;:cl:.xMMMMMMMM')
print('MMMMMMMMNxxxxddokOldxxdoocXMMMMMMMM')
print('MMMMMMMMWkddxddl:;;ooolllkWMMMMMMMM')
print('MMMMMMMMMXdlllcc:::cclc:dWMMMMMMMMM')
print('MMMMMMMMMMKlcoddooodoc;;KMMMMMMMMMM')
print('MMMMMMMMMMWd:;:c::;;,'':co0NMMMMMMM')
print('MMMMMN0xoc.:k:,,,.....ckc ...cdOXWM')
print('XOkd:..... :KKkl;'';lk0Oo ........:')
print('...........:NXNXc..;OXKKl  ...   ..')
print('....  .....,NN0l,..,coKKo   ..     ')
print('...    ....;NKO0:..0KOkXk   .....  ')
print('    .......:WWW0...OWWWWO.  ....   ')
print('    .......:WWWo...cWWWWK.. ....   ')
print('     ......cWW0.....XWWWN.. ....   ')
print('     ..... lWWc.....OWWWW,. ...    ')
```

A command-line script to screen scrape U.S. stock quotes (NYSE, AMEX, NASDAQ).   Takes one argument on the command line: a stock symbol.  Works on linux . 

### HOW TO EXECUTE :
```
chmod +x run.sh
./run.sh "" <- the only parameter will be the stock symbol that you want to get basic information
```

# Example : ./run.sh tsla
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

# Notes:
- Data comes from free source : https://finance.yahoo.com/quote/TSLA
- https://github.com/LondonMarket/Global-Stock-Symbols/blob/main/nasdaq_1668526380140.csv

