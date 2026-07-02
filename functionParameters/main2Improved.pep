BR main

n: .EQUATE 4
result: .EQUATE 0

dbPrint: SUBSP 2,i
LDWA 0,i
STWA result,s
;MEM[SP + 0] = 0
;MEM[SP + 2] = return address / PC
;MEM[SP + 4] = 20
LDWA n,s
ADDA n,s
STWA result,s

DECO result,s

ADDSP 2,i
RET

main: SUBSP 2,i
LDWA 20,i
STWA 0,s

CALL dbPrint 

ADDSP 2,i

STOP
.END