BR main

a: .EQUATE 10
b: .EQUATE 8
retVal: .EQUATE 6
c: .EQUATE 2 
d: .EQUATE 0

function: SUBSP 4,i

LDWA a,s
ADDA 20,i
STWA c,s

LDWA b,s
SUBA 10,i
STWA d,s

LDWA c,s
ADDA d,s
STWA retVal,s

ADDSP 4,i

RET

result: .EQUATE 0 

main: SUBSP 2,i

LDWA 9,i
STWA -2,s

LDWA 2,i
STWA -4,s

SUBSP 6,i

CALL function

LDWA 0,s

ADDSP 6,i

STWA result,s

DECO result,s

LDBA '\n',i
STBA charOut,d

ADDSP 2,i

STOP
.END
