BR main

n: .EQUATE 2

ctDown: LDWA n,s
BRNE else

STRO doneMsg,d
RET

else: DECO n,s

LDBA '\n',i
STBA charOut,d

LDWA n,s
SUBA 1,i
STWA n,s
BR ctDown

main: LDWA 3,i
STWA -2,s

SUBSP 2,i

CALL ctDown

ADDSP 2,i

STOP
doneMsg: .ASCII "done\n\x00"
.END
