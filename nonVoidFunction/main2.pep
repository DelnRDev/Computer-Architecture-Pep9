BR main

sum: LDWA 8,s
ADDA 6,s
ADDA 4,s
STWA 2,s
RET

main: LDWA 10,i
STWA -2,s

LDWA 20,i
STWA -4,s

LDWA 30,i
STWA -6,s

SUBSP 8,i

CALL sum
DECO 0,s
ADDSP 8,i

STOP
.END
