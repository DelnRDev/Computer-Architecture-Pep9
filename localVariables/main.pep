BR main 

msg1: .ASCII "high\n\x00"
msg2: .ASCII "low\n\x00"

limit: .EQUATE 100
num: .EQUATE 0

main: SUBSP 2,i
DECI num,s
LDWA num,s
CPWA limit,i ;num - limit
BRLE print2 
STRO msg1,d
BRGT endIf 
print2: STRO msg2,d
endIf: ADDSP 2,i
STOP
.END