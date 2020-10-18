;ez
section .data
fmt: db ";ez%1$csection .data%1$cfmt: db %2$c%3$s%2$c,0%1$cfnm: db 'Grace_kid.s'%1$csection .text%1$cglobal main%1$cextern open%1$cextern dprintf%1$c%4$cmacro OPEN 1%1$cmov rsi, %4$c1%1$clea rdi, [rel fnm]%1$ccall open%1$ccmp rax, 0xfffffff%1$cjge exit%1$c%4$cendmacro%1$c%4$cmacro WRITE 0%1$cmov rdi, rax%1$clea rsi, [rel fmt]%1$cmov rdx, 0xa%1$cmov rcx, 0x22%1$clea r8, [rel fmt]%1$cmov r9, 0x25%1$ccall dprintf%1$c%4$cendmacro%1$c%4$cmacro START 0%1$cmain:%1$cpush rbp%1$cmov rbp, rsp%1$cOPEN 0x241%1$cWRITE%1$cexit:%1$cleave%1$cret%1$c%4$cendmacro%1$cSTART",0
fnm: db 'Grace_kid.s'
section .text
global main
extern open
extern dprintf
%macro OPEN 1
mov rsi, %1
lea rdi, [rel fnm]
call open
cmp rax, 0xfffffff
jge exit
%endmacro
%macro WRITE 0
mov rdi, rax
lea rsi, [rel fmt]
mov rdx, 0xa
mov rcx, 0x22
lea r8, [rel fmt]
mov r9, 0x25
call dprintf
%endmacro
%macro START 0
main:
push rbp
mov rbp, rsp
OPEN 0x241
WRITE
exit:
leave
ret
%endmacro
START