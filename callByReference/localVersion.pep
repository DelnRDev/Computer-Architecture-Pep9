BR main

h: .EQUATE 6
w: .EQUATE 4
p: .EQUATE 2

rect: LDWA w,s
ADDA h,s
ASLA
STWA p,sf
RET

height: .EQUATE 4
width: .EQUATE 2
perim: .EQUATE 0

main: SUBSP 6,i
STRO msg1,d
DECI width,s
STRO msg2,d
DECI height,s


LDWA height,s
STWA -2,s

LDWA width,s
STWA -4,s

MOVSPA
ADDA perim,i
STWA -6,s

SUBSP 6,i

CALL rect

ADDSP 6,i

STRO msg3,d

DECO perim,s

LDBA '\n',i
STBA charOut,d

ADDSP 6,i

STOP

msg1: .ASCII "Enter width: \x00"
msg2: .ASCII "Enter height: \x00"
msg3: .ASCII "Perimeter = \x00"

.END
