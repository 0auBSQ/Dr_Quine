NASM = nasm
FLAGS = -felf64

COLLEEN = Colleen

all: $(COLLEEN)

$(COLLEEN):
	@$(NASM) $(FLAGS) Colleen.s
	@gcc -o $(COLLEEN) Colleen.o

clean:
	@rm -f Colleen.o

fclean: clean
	@rm -f $(COLLEEN)
	
re: fclean all

