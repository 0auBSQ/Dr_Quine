section .data
fmt: db "section .data%1$cfmt: db %2$c%3$s%2$c,0%1$cfnm: db 'Sully_ .s',0%1$ccmd: db 'nasm -felf64 -dOFFSET=0 Sully_ .s && gcc -o Sully_  -no-pie Sully_ .o && ./Sully_ ',0%1$csection .text%1$cglobal main%1$cextern open%1$cextern dprintf%1$cextern system%1$cmain:%1$cpush rbp%1$cmov rbp, rsp%1$cmov rax, %4$c%1$cadd rax, OFFSET%1$cadd rax, 0x30%1$ccmp rax, 0x30%1$cjbe exit%1$csub rax, 1%1$cmov r9, rax%1$clea rdi, [rel fnm + 6]%1$cstosb%1$clea rdi, [rel cmd + 30]%1$cstosb%1$cadd rdi, 19%1$cstosb%1$cadd rdi, 15%1$cstosb%1$cadd rdi, 14%1$cstosb%1$clea rdi, [rel fnm]%1$cmov rsi, 0x241%1$ccall open%1$ccmp rax, 0xfffffff%1$cjge exit%1$cmov rdi, rax%1$clea rsi, [rel fmt]%1$cmov rdx, 0xa%1$cmov rcx, 0x22%1$clea r8, [rel fmt]%1$ccall dprintf%1$clea rdi, [rel cmd]%1$ccall system%1$cexit:%1$cleave%1$cret",0
fnm: db 'Sully_ .s',0
cmd: db 'nasm -felf64 -dOFFSET=0 Sully_ .s && gcc -o Sully_  -no-pie Sully_ .o && ./Sully_ ',0
section .text
global main
extern open
extern dprintf
extern system
main:
push rbp
mov rbp, rsp
mov rax, 5
add rax, OFFSET
add rax, 0x30
cmp rax, 0x30
jbe exit
sub rax, 1
mov r9, rax
lea rdi, [rel fnm + 6]
stosb
lea rdi, [rel cmd + 30]
stosb
add rdi, 19
stosb
add rdi, 15
stosb
add rdi, 14
stosb
lea rdi, [rel fnm]
mov rsi, 0x241
call open
cmp rax, 0xfffffff
jge exit
mov rdi, rax
lea rsi, [rel fmt]
mov rdx, 0xa
mov rcx, 0x22
lea r8, [rel fmt]
call dprintf
lea rdi, [rel cmd]
call system
exit:
leave
ret