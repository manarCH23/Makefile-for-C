#define the C compiler
CC	=	gcc

#define the compiler flags
CFLAGS	=	-std=c11 -Wall -fmax-errors=10 -Wextra

#define libaries path in addition to /usr/lib
LFLAGS	=	

#define libaries to use
libaries	=	

#define the object files needed in the project
OBJFILES	=	program.o weatherstats.o

#defien the executable file
MAIN	=	program

#all the below is generic

all:	$(MAIN)
$(MAIN):	$(OBJFILES)
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJFILES)

%.o:	%.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:	
	rm -f $(OBJFILES) $(MAIN)
	
