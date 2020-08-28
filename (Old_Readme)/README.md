# Dr_quine
Various programs that display their source code

## Installation

### Clone

- Clone this repo using `git clone https://github.com/rmarracc/Dr_quine`

### Build

- Go on the C folder
- Simply build the program with `make` in the cloned folder

## Usage

- Execute the Colleen quine with `./Colleen`
- Execute the Grace quine with `./Grace`
- Execute the Sully quine with `./Sully`

## Rules

### Colleen

- Basic C quine which displays its own source code
- The requirements of this quine are :
- 2 comments (1 inside the main function, the other outside)
- 1 main function
- 1 additionnal function, called during the execution

### Grace

- Basic C quine which displays its own source code
- The requirements of this quine are :
- 1 comment
- No main function declared
- Strictly 3 preprocessor defines

### Sully

- C quine with creates other quines, compiles them and execute them
- The requirements of this quine are :
- A i variable decreasing on every child quine the sully quine creates
- Not executed if i isn't strictly positive

## How it works ?

### Colleen

- The whole source code is contained in a big string
- The characters \n and " are replaced by their ASCII code, since we can't display them directly with printf
- We put the whole string between two quotes within a %s parameter, so the printf function can display the string itself

### Grace

- The whole source code is also contained in a big string
- The code is splitted in 3 defines : A open define, A write define with dprintf, and the hidden main define
- We call directly the WR() define with the returned fd got with OP() (If the open function fails, the quine do nothing), so the string is directly writed on the child quine
- We call the main define just by writing "FT()" on the source code
- Yes I didn't closed my fd after use (and it's very dirty), but since I use open only 1 time in this case it's not a big deal

### Sully

- One more time, The whole source code is contained in a big string
- We store the new filename on a staticlly allocated string with sprintf
- We use dprintf in the same way as on the Grace quine
- We decrement the i value directly on the dprintf function, and then we compile and execute our new quine thanks to system()
- To create Sully_5.c without using __FILE__/argv[0] and without altering the code I used the following trick :
- When you compile a C program with a C++ compiler, __cplusplus is defined to 199711L, otherwise it's undefined
- So, I compile the initial sully program with a C++ compiler (g++), then I use clang for the next ones (classic C compiler)
- if __cplusplus is undefined, I set it to 0, to avoid compilation errors
- Then, i check the __cplusplus value on the main function, if it's different to 199711L, it's the parent quine, otherwise it's a child quine, then I decrement i
- So, with this trick, the sully.c file can have any name, like "pizzawithananassucks.c" or "theordersucks.c" if you want, the program works for any i value too, if you have dark thoughts you can also try for i = 666
- Note that the g++ compiler throws a warning since I set a string directly to a char* (C++ has string type), but my code is in C so it's not a big deal

## Notes

- This project contains two parts (a C part (compulsory) and an ASM part (to get more points)), this repo contains currently only the C part
- The free(NULL) on the sully source code is useless, I used itoa() before but since itoa() isn't standard, I replaced it by sprintf, which doesn't allocate memory with malloc(3)
