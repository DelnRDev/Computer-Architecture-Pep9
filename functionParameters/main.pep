BR main

n: .EQUATE 2

say: DECO n,s
LDBA '\n',i
STBA charOut,d
RET

main: LDWA 5,i

STWA -2,s
SUBSP 2,i

CALL say

ADDSP 2,i

STOP

.END