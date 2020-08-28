#ifndef td
#define td 0
#endif
PROGRAM Sully;INTEGER :: i;CHARACTER(18) :: n
CHARACTER*579 :: s='("#ifndef td",/,"#define td 0",/,"#endif",/,"PROGRAM Sully;INTEGER :: i;CHARACTER(18) :: n",/,"CHARACTER*579 :: s=",1A1,1A,1A1,/,"i = ",1I1,";IF (td /= 0) THEN",/,"i = i + 1;END IF;i = i - 1",/,"IF (i < 0) THEN",/,"STOP;END IF",/,"WRITE (n, ",1A1,"(I8)",1A1,"), i",/,"n = TRIM(n)//",1A1,".f90",1A1,/,"n = ",1A1,"Sully_",1A1,"//ADJUSTL(n)",/,"OPEN(2,file=n)",/,"WRITE(2,s,advance=",1A1,"no",1A1,"),39,s,39,i,39,39,39,39,39,39,34,34,39,39,39,39",/,"CALL SYSTEM(",1A1,"gfortran -cpp -ffixed-line-length-601 -ffree-line-length-601 ",1A1,"//n);CALL SYSTEM(",1A1,"./a.out",1A1,");END")'
i = 5;IF (td /= 0) THEN
i = i + 1;END IF;i = i - 1
IF (i < 0) THEN
STOP;END IF
WRITE (n, '(I8)'), i
n = TRIM(n)//'.f90'
n = 'Sully_'//ADJUSTL(n)
OPEN(2,file=n)
WRITE(2,s,advance="no"),39,s,39,i,39,39,39,39,39,39,34,34,39,39,39,39
CALL SYSTEM('gfortran -cpp -ffixed-line-length-601 -ffree-line-length-601 '//n);CALL SYSTEM('./a.out');END
