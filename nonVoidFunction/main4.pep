BR main

input1: .EQUATE 2
input2: .EQUATE 0

main: SUBSP 4,i

DECI input1, s
DECI input2, s

LDWA input1,s 
CPWA 2,i
BREQ printYe

LDWA input2, s
CPWA 2,i
BRNE else

printYe: STRO msg1,d

BR endIf 

else: STRO msg2,d

endIf: STOP 

msg1: .ASCII "yes\n\x00"
msg2: .ASCII "nah\n\x00"

.END
