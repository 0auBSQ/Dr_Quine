NASM = nasm
FLAGS = -felf64

COLLEEN = Colleen
GRACE = Grace

all: $(COLLEEN) $(GRACE)

$(COLLEEN):
	@$(NASM) $(FLAGS) Colleen.s
	@gcc -o $(COLLEEN) Colleen.o
	
$(GRACE):
	@$(NASM) $(FLAGS) Grace.s
	@gcc -o $(GRACE) Grace.o

clean:
	@rm -f Colleen.o
	@rm -f Grace.o

fclean: clean
	@rm -f $(COLLEEN)
	@rm -f $(GRACE)
	
re: fclean all

