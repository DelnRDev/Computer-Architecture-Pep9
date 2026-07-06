BR main

a: .WORD 10

x: .EQUATE 2

addOne: LDWA x,sf
ADDA 1,i
STWA x,sf
RET

main: LDWA a,i
STWA -2,s
SUBSP 2,i

CALL addOne

ADDSP 2,i

DECO a,d

LDWA '\n',i
STWA charOut,d

STOP
.END
