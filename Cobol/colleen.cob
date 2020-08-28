000000*COBOL la vie
000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. colleen.
000030 DATA DIVISION.
000040 WORKING-STORAGE SECTION.
000050 01 s-tbl.
000060     10 s pic x(44) occurs 31.
000070 01 i pic 9(2).
000080 01 j pic 9(2).
000090 PROCEDURE DIVISION.
000100*    COBOL > NodeJS
000110     MOVE "000000*COBOL la vie" to s(01)
000110     MOVE "000010 IDENTIFICATION DIVISION." to s(02)
000110     MOVE "000020 PROGRAM-ID. colleen." to s(03)
000110     MOVE "000030 DATA DIVISION." to s(04)
000110     MOVE "000040 WORKING-STORAGE SECTION." to s(05)
000110     MOVE "000050 01 s-tbl." to s(06)
000110     MOVE "000060     10 s pic x(44) occurs 31." to s(07)
000110     MOVE "000070 01 i pic 9(2)." to s(08)
000110     MOVE "000080 01 j pic 9(2)." to s(09)
000110     MOVE "000090 PROCEDURE DIVISION." to s(10)
000110     MOVE "000100*    COBOL > NodeJS" to s(11)
000110     MOVE "000120     PERFORM VARYING i" to s(12)
000110     MOVE "000130     FROM 1 BY 1 UNTIL i > 31" to s(13)
000110     MOVE "000140         DISPLAY" to s(14)
000110     MOVE "000150         FUNCTION TRIM(s(i))" to s(15)
000110     MOVE "000160         IF i = 11" to s(16)
000110     MOVE "000170             PERFORM VARYING j" to s(17)
000110     MOVE "000180             FROM 1 BY 1 UNTIL j > 31" to s(18)
000110     MOVE "000190                 DISPLAY" to s(19)
000110     MOVE "000200                 '000110     MOVE '" to s(20)
000110     MOVE "000210                 x'22'" to s(21)
000110     MOVE "000220                 FUNCTION TRIM(s(j))" to s(22)
000110     MOVE "000230                 x'22'" to s(23)
000110     MOVE "000240                 ' to s('j')'" to s(24)
000110     MOVE "000250             END-PERFORM" to s(25)
000110     MOVE "000260         END-IF" to s(26)
000110     MOVE "000270     END-PERFORM" to s(27)
000110     MOVE "000280 STOP RUN." to s(28)
000110     MOVE "000290 END PROGRAM colleen." to s(29)
000110     MOVE "000300 PROGRAM-ID. extra." to s(30)
000110     MOVE "000310 END PROGRAM extra." to s(31)
000120     PERFORM VARYING i
000130     FROM 1 BY 1 UNTIL i > 31
000140         DISPLAY
000150         FUNCTION TRIM(s(i))
000160         IF i = 11
000170             PERFORM VARYING j
000180             FROM 1 BY 1 UNTIL j > 31
000190                 DISPLAY
000200                 '000110     MOVE '
000210                 x'22'
000220                 FUNCTION TRIM(s(j))
000230                 x'22'
000240                 ' to s('j')'
000250             END-PERFORM
000260         END-IF
000270     END-PERFORM
000280 STOP RUN.
000290 END PROGRAM colleen.
000300 PROGRAM-ID. extra.
000310 END PROGRAM extra.
