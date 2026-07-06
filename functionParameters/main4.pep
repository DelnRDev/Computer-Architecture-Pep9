BR main

numPts:.EQUATE 0 
value: .EQUATE 2
j: .EQUATE 4

n: .EQUATE 4
k: .EQUATE 0

printBar: LDWA 1,i
SUBSP 2,i
STWA k,s

for2: LDWA k,s
CPWA n,s
BRGT endLoop2

LDBA '*',i
STBA charOut,d

ADDA 1,i
STWA k,s

BR for2

endLoop2: LDBA '\n',i
STBA charOut,d
ADDSP 2,i

RET


main: SUBSP 6,i

DECI numPts,s

LDWA 1,i
STWA j,s

for1: LDWA j,s
CPWA numPts,s
BRGT endLoop1

DECI value,s


LDWA value,s
SUBSP 2,i
STWA 0,s

CALL printBar

ADDSP 2,i

ADDA 1,i
STWA j,s

BR for1

endLoop1: ADDSP 6,i
 STOP
.END
