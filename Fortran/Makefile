COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
SULLYPLUS = Sullyplus

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	gfortran -o $(COLLEEN) colleen.f90

$(GRACE):
	gfortran -cpp -ffixed-line-length-205 -ffree-line-length-205 -o $(GRACE) grace.f90

$(SULLY):
	gfortran -cpp -Dtd -ffixed-line-length-601 -ffree-line-length-601 -o $(SULLY) sully.f90

$(SULLYPLUS):
	gfortran -cpp -ffixed-line-length-800 -ffree-line-length-800 -o $(SULLYPLUS) sullyplus.f90

clean:
	rm -f $(COLLEEN)
	rm -f $(GRACE)
	rm -f $(SULLY)
	rm -f $(SULLYPLUS)

fclean: clean

re: fclean all

.PHONY: all clean fclean re
