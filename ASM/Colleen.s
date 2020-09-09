;ez
section .data
fmt: db ";ez%1$csection .data%1$cfmt: db %2$c%3$s%2$c%1$csection .text%1$cglobal main%1$cextern printf%1$cmain:%1$c;lidl%1$cpush rbp%1$cmov rbp, rsp%1$clea rcx, [rel fmt]%1$cmov rdx, 0x22%1$cmov rsi, 0xa%1$clea rdi, [rel fmt]%1$ccall printf%1$cleave%1$cret%1$cuseless:%1$cleave%1$cret"
section .text
global main
extern printf
main:
;lidl
push rbp
mov rbp, rsp
lea rcx, [rel fmt]
mov rdx, 0x22
mov rsi, 0xa
lea rdi, [rel fmt]
call printf
leave
ret
useless:
leave
ret