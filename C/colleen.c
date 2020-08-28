#include <stdio.h>

/*
	a
*/

int printe(char *s){return(printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10, 10, 10, 10));}
int main(void)
{
	char *s = "#include <stdio.h>%c%c/*%c	a%c*/%c%cint printe(char *s){return(printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10, 10, 10, 10));}%cint main(void)%c{%c	char *s = %c%s%c;%c%c	/*%c		b%c	*/%c	return(printe(s));%c}%c";

	/*
		b
	*/
	return(printe(s));
}
