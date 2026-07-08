BR main


j: .EQUATE 0 ;#2d
vector: .EQUATE 2;#2d4a

main: SUBSP 10,i ; #vector #j

LDWA 0,i
STWA j,s

for1: LDWA j,s
CPWA 4,i
BRGE endFor1

LDWX j,s
ASLX

DECI vector,sx

LDWA j,s
ADDA 1,i
STWA j,s

BR for1

endFor1: LDWA 3,i
STWA j,s

for2: LDWA j,s 
CPWA 0,i
BRLT endFor2

DECO j,s

LDBA ' ',i
STBA charOut,d

LDWX j,s
ASLX

DECO vector,sx

LDBA '\n',i
STBA charOut,d

LDWA j,s
SUBA 1,i
STWA j,s

BR for2

endFor2: ADDSP 10,i ;#j #vector
STOP
.END
