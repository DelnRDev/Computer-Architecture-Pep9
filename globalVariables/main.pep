;input address 0x15 or charIn
;output address 0x16 or charOut
BR main ;jump to address corresponding to "main"

char: .BLOCK 1 ;make room for 1 byte 
j: .BLOCK 2;make room for 2 byte / 1 word

main: LDBA charIn,d ;load a byte to the accumulator from the address of whatever the input address is
STBA char,d ;store the value in accumulator to the address of "char"

DECI j,d ;read a decimal number from the input and store it at the address of "j"

LDWA j,d ;load 2 byte from address of "j"
ADDA 5,i ;add 5 to the accumulator value (in decimal)
STWA j,d ;store 2 byte from the accumulator to the address of "j"

LDBA char,d ;load a byte from the address of"char"
ADDA 1,i ;add 1 to the value of accumulator (in decimal)
STBA char,d ;store the last byte from the accumulator to the address of "char"

STBA charOut, d ;print the character in the accumulator

LDBA 10,i ;load the value 10 into the accumulator (which is equivalent to the new line character in ASCII)
STBA charOut,d ; print the value in the accumulator

DECO j,d ;print the decimal value from the address of "j"

LDBA 10,i ;load the value 10 into the accumulator (which is equivalent to the new line character in ASCII)
STBA charOut,d ;print the value in the accumulator

STOP
.END




