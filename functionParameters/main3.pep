BR main

numPts: .BLOCK 2
value: .BLOCK 2
j: .BLOCK 2 

n: .EQUATE 4
k: .EQUATE 0

printBar: SUBSP 2,i
LDWA 1,i
STWA 0,s

for: LDWA 0,s
CPWA 4,s
BRGT endLoop
ADDA 1,i
STWA 0,s

LDBA '*',i
STBA charOut,d
BR for


endLoop: LDBA '\n',i
STBA charOut,d

ADDSP 2,i

RET


main: DECI numPts,d
LDWA 1,i
STWA j,d

for2: LDWA j,d
CPWA numPts,d
BRGT endLoop2

ADDA 1,i
STWA j,d

DECI value,d

SUBSP 2,i
LDWA value,d
STWA 0,s

CALL printBar

ADDSP 2,i

BR for2

endLoop2: STOP
.END