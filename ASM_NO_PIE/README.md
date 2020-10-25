# Assembly Quines

## Notes

- Those quines are made for Linux 64 bits systems and use the -felf64 nasm flag
- For 32 bits system, use `-felf` instead of `-felf64` and use the gcc `-m32` flag, replace all r- 64bits registers by the e- 32bits equivalents in the source code
- Those quines use C functions calls and work like the C ones, it could be more interesting to write them in pure ASM anyway

## Args

- `%1$c`, `%2$c` and `%3$s` are 3 printf variadic arguments
- `%1$c` : `mov rsi, 0xa` (Line Feed)
- `%2$c` : `mov rdx, 0x22` (Double quotes)
- `%3$s` : `lea rcx, [rel fmt]` (Format reference, not evaluated)
