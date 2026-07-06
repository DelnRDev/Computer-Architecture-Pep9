BR main

p: .EQUATE 2

addOne: LDWA p,sf
ADDA 1,i
STWA p,sf
RET

x: .EQUATE 0

main: SUBSP 2,i
DECI x,s

MOVSPA 
ADDA x,i
STWA -2,s

SUBSP 2,i

CALL addOne

ADDSP 2,i

DECO x,s

ADDSP 2,i

STOP
.END
