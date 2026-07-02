BR main

letter: .BLOCK 1

main: LDBA charIn,d
STBA letter,d

while: CPBA '*',i
BREQ endLoop

CPBA ' ',i
BRNE else

LDBA '\n',i
STBA charOut,d

BR nextChar 

else: STBA charOut,d

nextChar: LDBA charIn,d
STBA letter,d


BR while

endLoop: STOP
.END
