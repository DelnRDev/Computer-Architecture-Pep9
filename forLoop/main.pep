BR main
j: .EQUATE 0

main:SUBSP 2,i
LDWA 0,i
STWA j,s

for: LDWA j,s
CPWA 5,i
BRGE endLoop 

STRO msg,d
DECO j,s
LDBA '\n',i
STBA charOut,d
LDWA j,s
ADDA 1,i
STWA j,s
BR for

endLoop: ADDSP 2,i
STOP
msg: .ASCII "j = \x00"
.END