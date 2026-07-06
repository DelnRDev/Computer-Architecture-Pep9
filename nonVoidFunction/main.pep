BR main

n: .EQUATE 4
retVal: .EQUATE 2

dbNum: LDWA n,s
ADDA n,s
STWA retVal,s
RET


input: .EQUATE 0

main: SUBSP 2,i
DECI input,s

LDWA input,s
STWA -2,s

SUBSP 4,i

CALL dbNum 

DECO 0,s

ADDSP 6,i


STOP
.END
