BR main

cop: .BLOCK 2
driver: .BLOCK 2

main: LDWA 0,i
STWA cop,d
LDWA 40,i
STWA driver,d

do: LDWA cop,d
ADDA 25,i
STWA cop,d

LDWA driver,d
ADDA 20,i
STWA driver,d

LDWA cop,d
CPWA driver,d ;acc - driver
BRLT do
DECO cop,d
STOP
.END