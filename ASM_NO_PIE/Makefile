NASM = nasm
FLAGS = -felf64

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	@$(NASM) $(FLAGS) Colleen.s
	@gcc -o $(COLLEEN) -no-pie Colleen.o
	
$(GRACE):
	@$(NASM) $(FLAGS) Grace.s
	@gcc -o $(GRACE) -no-pie Grace.o

$(SULLY):
	@$(NASM) $(FLAGS) -dOFFSET=1 Sully.s
	@gcc -o $(SULLY) -no-pie Sully.o

clean:
	@rm -f Colleen.o
	@rm -f Grace.o
	@rm -f Sully.o

fclean: clean
	@rm -f $(COLLEEN)
	@rm -f $(GRACE)
	@rm -f $(SULLY)
	
re: fclean all

