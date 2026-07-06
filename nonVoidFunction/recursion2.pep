BR main

y2:.EQUATE 0
y1: .EQUATE 2
retVal: .EQUATE 6
k: .EQUATE 8
n: .EQUATE 10

binCoeff: SUBSP 4,i

LDWA k,s
BREQ ret1

LDWA n,s
CPWA k,s
BRNE else

ret1: LDWA 1,i
STWA retVal,s

ADDSP 4,i

RET

else: LDWA n,s
SUBA 1,i
STWA -2,s

LDWA k,s
STWA -4,s

SUBSP 6,i

CALL binCoeff

LDWA 0,s

ADDSP 6,i

STWA y1,s

LDWA n,s
SUBA 1,i
STWA -2,s

LDWA k,s
SUBA 1,i
STWA -4,s

SUBSP 6,i

CALL binCoeff

LDWA 0,s

ADDSP 6,i

STWA y2,s

LDWA y1,s
ADDA y2,s
STWA retVal,s

ADDSP 4,i

RET

main: LDWA 10,i
STWA -2,s 

LDWA 4,i
STWA -4,s

SUBSP 6,i 

CALL binCoeff 

DECO 0,s

ADDSP 6,i

LDWA '\n',i
STWA charOut,d

STOP
.END
