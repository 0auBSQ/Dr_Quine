COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	clang -Wall -Wextra -Werror colleen.c -o $(COLLEEN)

$(GRACE):
	clang -Wall -Wextra -Werror grace.c -o $(GRACE)

$(SULLY):
	g++ sully.c -o $(SULLY)

clean:
	rm -f $(COLLEEN)
	rm -f $(GRACE)
	rm -f $(SULLY)

fclean: clean

re: fclean all

.PHONY: all clean fclean re
