CC=gcc
CFLAGS=-I.
OBJ = MacUILib.o PPA1.o 
DEPS = *.h
#POSTLINKER = -lncurses   ## uncomment this if on Linux
EXEC = PPA1

%.o: %.c $(DEPENDS)
	$(CC) -c -o $@ $< $(CFLAGS)

${EXEC} : $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) ${POSTLINKER}

clean :
	rm -r ${OBJ} ${EXEC} ${EXEC}.exe
	

