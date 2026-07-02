BR main


print: STRO msg,d 
LDBA '\n',i
STBA charOut,d 
RET 

main: CALL print 

STOP
msg: .ASCII "Hello\x00"
.END