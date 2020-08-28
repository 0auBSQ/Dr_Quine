000000*Cobol is a disruptive language
000001 REPLACE ==HEADER==
000001     BY ==PROCEDURE DIVISION.==.
000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. grace.
000030 ENVIRONMENT DIVISION.
000040 INPUT-OUTPUT SECTION.
000050 FILE-CONTROL.
000050 SELECT retfd ASSIGN TO 'Grace_kid.cob'
000050 ORGANIZATION IS LINE SEQUENTIAL.
000060 DATA DIVISION.
000070 FILE SECTION.
000070 FD retfd.
000070 01 t pic x(70).
000070 WORKING-STORAGE SECTION.
000070 01 s-tbl.
000070     10 s pic x(70) occurs 90.
000070 01 i pic 9(2).
000070 01 j pic 9(2).
000080 HEADER
000090 OPEN OUTPUT retfd
000100 MOVE "000000*Cobol is a disruptive language" to s(01)
000100 MOVE "000001 REPLACE ==HEADER==" to s(02)
000100 MOVE "000001     BY ==PROCEDURE DIVISION.==." to s(03)
000100 MOVE "000010 IDENTIFICATION DIVISION." to s(04)
000100 MOVE "000020 PROGRAM-ID. grace." to s(05)
000100 MOVE "000030 ENVIRONMENT DIVISION." to s(06)
000100 MOVE "000040 INPUT-OUTPUT SECTION." to s(07)
000100 MOVE "000050 FILE-CONTROL." to s(08)
000100 MOVE "000050 SELECT retfd ASSIGN TO 'Grace_kid.cob'" to s(09)
000100 MOVE "000050 ORGANIZATION IS LINE SEQUENTIAL." to s(10)
000100 MOVE "000060 DATA DIVISION." to s(11)
000100 MOVE "000070 FILE SECTION." to s(12)
000100 MOVE "000070 FD retfd." to s(13)
000100 MOVE "000070 01 t pic x(70)." to s(14)
000100 MOVE "000070 WORKING-STORAGE SECTION." to s(15)
000100 MOVE "000070 01 s-tbl." to s(16)
000100 MOVE "000070     10 s pic x(70) occurs 90." to s(17)
000100 MOVE "000070 01 i pic 9(2)." to s(18)
000100 MOVE "000070 01 j pic 9(2)." to s(19)
000100 MOVE "000080 HEADER" to s(20)
000100 MOVE "000090 OPEN OUTPUT retfd" to s(21)
000100 MOVE "000110 PERFORM VARYING j" to s(67)
000100 MOVE "000110     FROM 1 BY 1 UNTIL j > 21" to s(68)
000100 MOVE "000110     STRING'000100 MOVE 'x'22'" to s(69)
000100 MOVE "000110     FUNCTION TRIM(s(j))x'22'" to s(70)
000100 MOVE "000110     ' to s('j')'into s(j+ 21)" to s(71)
000100 MOVE "000110 END-PERFORM" to s(72)
000100 MOVE "000110 PERFORM VARYING i" to s(73)
000100 MOVE "000110     FROM 67 BY 1 UNTIL i > 90" to s(74)
000100 MOVE "000110     STRING'000100 MOVE 'x'22'" to s(75)
000100 MOVE "000110     FUNCTION TRIM(s(i))x'22'" to s(76)
000100 MOVE "000110     ' to s('i')'into s(i- 24)" to s(77)
000100 MOVE "000110 END-PERFORM" to s(78)
000100 MOVE "000112 REPLACE ==LOOPI==" to s(79)
000100 MOVE "000112     BY ==PERFORM VARYING i==." to s(80)
000100 MOVE "000115 LOOPI" to s(81)
000100 MOVE "000115     FROM 1 BY 1 UNTIL i > 90" to s(82)
000100 MOVE "000115     MOVE s(i) to t" to s(83)
000100 MOVE "000115     WRITE t" to s(84)
000100 MOVE "000115 END-PERFORM" to s(85)
000100 MOVE "000120 CLOSE retfd" to s(86)
000100 MOVE "000123 REPLACE ==QUIT==" to s(87)
000100 MOVE "000123     BY ==STOP RUN.==." to s(88)
000100 MOVE "000130 QUIT" to s(89)
000100 MOVE "000130 END PROGRAM grace." to s(90)
000110 PERFORM VARYING j
000110     FROM 1 BY 1 UNTIL j > 21
000110     STRING'000100 MOVE 'x'22'
000110     FUNCTION TRIM(s(j))x'22'
000110     ' to s('j')'into s(j+ 21)
000110 END-PERFORM
000110 PERFORM VARYING i
000110     FROM 67 BY 1 UNTIL i > 90
000110     STRING'000100 MOVE 'x'22'
000110     FUNCTION TRIM(s(i))x'22'
000110     ' to s('i')'into s(i- 24)
000110 END-PERFORM
000112 REPLACE ==LOOPI==
000112     BY ==PERFORM VARYING i==.
000115 LOOPI
000115     FROM 1 BY 1 UNTIL i > 90
000115     MOVE s(i) to t
000115     WRITE t
000115 END-PERFORM
000120 CLOSE retfd
000123 REPLACE ==QUIT==
000123     BY ==STOP RUN.==.
000130 QUIT
000130 END PROGRAM grace.
