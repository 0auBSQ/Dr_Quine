#ifndef td
#define td i
#endif
PROGRAM Sullyplus;INTEGER :: i;CHARACTER(28) :: n;CHARACTER(28) :: t
CHARACTER*639 :: s='("#ifndef td",/,"#define td i",/,"#endif",/,"PROGRAM Sullyplus;INTEGER :: i;CHARACTER(28) :: n;CHARACTER(28) :: t",/,"CHARACTER*639 :: s=",1A1,1A,1A1,/,"i = 5;IF (0 == 0) THEN",/,"i = td-1;END IF;",/,"IF (i < 0) THEN",/,"STOP;END IF",/,"WRITE (n, ",1A1,"(I8)",1A1,"), i;t = ",1A1,"gfortran -cpp -Dtd=",1A1,"//ADJUSTL(TRIM(n))",/,"n = TRIM(n)//",1A1,".f90",1A1,/,"n = ",1A1,"SullyPlus_",1A1,"//ADJUSTL(n)",/,"OPEN(2,file=n)",/,"WRITE(2,s,advance=",1A1,"no",1A1,"),39,s,39,39,39,39,39,39,39,39,39,34,34,39,39,39,39",/,"CALL SYSTEM(t//",1A1," -ffixed-line-length-800 -ffree-line-length-800 ",1A1,"//n);CALL SYSTEM(",1A1,"./a.out",1A1,");END")'
i = 5;IF (0 == 0) THEN
i = td-1;END IF;
IF (i < 0) THEN
STOP;END IF
WRITE (n, '(I8)'), i;t = 'gfortran -cpp -Dtd='//ADJUSTL(TRIM(n))
n = TRIM(n)//'.f90'
n = 'SullyPlus_'//ADJUSTL(n)
OPEN(2,file=n)
WRITE(2,s,advance="no"),39,s,39,39,39,39,39,39,39,39,39,34,34,39,39,39,39
CALL SYSTEM(t//' -ffixed-line-length-800 -ffree-line-length-800 '//n);CALL SYSTEM('./a.out');END
