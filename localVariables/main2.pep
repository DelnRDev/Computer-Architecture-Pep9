BR main

x: .EQUATE 0
y: .EQUATE 2
z: .EQUATE 4
result: .EQUATE 6

main: SUBSP 8,i

LDWA 10,i 
STWA x,s

LDWA 20,i
STWA y,s

LDWA 30,i
STWA z,s

LDWA x,s
ADDA y,s
ADDA z,s
STWA result,s

DECO result,s

ADDSP 8,i

STOP
.END