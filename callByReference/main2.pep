BR main

a: .BLOCK 2 
b: .BLOCK 2

x: .EQUATE 4
y: .EQUATE 2

addToFi: LDWA x,sf 
ADDA y,sf
STWA x,sf
RET

main:LDWA 10,i
STWA a,d

LDWA 3,i
STWA b,d

LDWA a,i
STWA -2,s

LDWA b,i
STWA -4,s

SUBSP 4,i

CALL addToFi

ADDSP 4,i

STRO msg1,d
DECO a,d
STRO msg2,d
DECO b,d
LDWA '\n',i
STWA charOut,d


STOP
msg1: .ASCII "a: \x00"
msg2: .ASCII ", b: \x00"
.END
