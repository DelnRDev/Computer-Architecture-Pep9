BR main


dbPrint: SUBSP 2,i
LDWA 0,i
STWA 0,s
;MEM[SP + 0] = 0
;MEM[SP + 2] = return address / PC
;MEM[SP + 4] = 20
LDWA 4,s
ADDA 4,s
STWA 0,s

DECO 0,s

ADDSP 2,i
RET

main: SUBSP 2,i
LDWA 20,i
STWA 0,s

CALL dbPrint 

ADDSP 2,i

STOP
.END