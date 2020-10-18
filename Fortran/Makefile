COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	gfortran -o $(COLLEEN) colleen.f90

$(GRACE):
	gfortran -cpp -ffixed-line-length-205 -ffree-line-length-205 -std=legacy -o $(GRACE) grace.f90

$(SULLY):
	gfortran -cpp -Dtd -ffixed-line-length-601 -ffree-line-length-601 -std=legacy -o $(SULLY) sully.f90

clean:
	rm -f $(COLLEEN)
	rm -f $(GRACE)
	rm -f $(SULLY)

fclean: clean

re: fclean all

.PHONY: all clean fclean re
