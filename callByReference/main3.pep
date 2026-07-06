BR main

a: .BLOCK 2
b: .BLOCK 2

r: .EQUATE 6
s: .EQUATE 4
temp: .EQUATE 0

swap: STRO dbg,d
SUBSP 2,i
LDWA r,sf
STWA temp,s

LDWA s,sf
STWA r,sf

LDWA temp,s
STWA s,sf

ADDSP 2,i

RET

x: .EQUATE 4
y: .EQUATE 2

order: LDWA x,sf
CPWA y,sf
BRLE endIf

LDWA x,s
STWA -2,s
LDWA y,s
STWA -4,s
SUBSP 4,i
CALL swap
ADDSP 4,i

endIf: RET

main: STRO msg,d
DECI a,d
STRO msg,d
DECI b,d
 
LDWA a,i
STWA -2,s
LDWA b,i
STWA -4,s
SUBSP 4,i
CALL order
ADDSP 4,i

STRO msg2,d
DECO a,d

LDBA ',',i
STBA charOut,d

LDBA ' ',i
STBA charOut,d

DECO b,d

LDBA '\n',i
STBA charOut,d

STOP

msg: .ASCII "Enter an integer: \x00"

dbg: .ASCII "swapping\n\x00"

msg2: .ASCII "ordered: \x00" 

.END
