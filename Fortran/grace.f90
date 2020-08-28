#define A(x,y) WRITE(2,y,advance="no"),34,34,34,34;WRITE(2,x,advance="no"),34,34,39,y,39,39,x,39
#define B() PROGRAM Grace!E
#define C() OPEN(unit=2,file="Grace_kid.f90")
B()
CHARACTER*185::s='("#define A(x,y) WRITE(2,y,advance=",1A1,"no",1A1,"),34,34,34,34;WRITE(2,x,advance=",1A1,"no",1A1,"),34,34,39,y,39,39,x,39",/,"#define B() PROGRAM Grace!E",/,"#define C() OPEN(unit=2,")'
CHARACTER*130::t='("file=",1A1,"Grace_kid.f90",1A1,")",/,"B()",/,"CHARACTER*185::s=",1A1,1A,1A1,/,"CHARACTER*130::t=",1A1,1A,1A1,/,"C();A(t,s);END")'
C();A(t,s);END
