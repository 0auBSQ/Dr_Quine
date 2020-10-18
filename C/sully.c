#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#ifndef __cplusplus
#define __cplusplus 0
#endif
int main(void){
	char *s = "#include <stdlib.h>%c#include <stdio.h>%c#include <fcntl.h>%c#include <string.h>%c#ifndef __cplusplus%c#define __cplusplus 0%c#endif%cint main(void){%c	char *s = %c%s%c;%c	char buf[100] = {0};%c	char cmd[106] = {0};%c	char e[20];%c	int i = %d;%c	if (__cplusplus != 0)%c		i++;%c	if (i < 1)%c		return (0);%c	strcat(buf, %cSully_%c);%c	sprintf(e, %c%cd%c, i - 1);%c	strcat(buf, e);%c	free(NULL);%c	strcat(buf, %c.c%c);%c	int fd;dprintf(((fd = open(buf, O_WRONLY | O_CREAT | O_TRUNC)) > 0 ? fd : 1), s, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10, i - 1, 10, 10, 10, 10, 10, 34, 34, 10, 34, 37, 34, 10, 10, 10, 34, 34, 10, 10, 34, 34, 10, 34, 34, 10, 34, 34, 10, 10);%c	strcpy(cmd, %cclang %c);%c	strcat(cmd, buf);strcat(cmd, %c -o %c);buf[strlen(buf)-2]=0;system(strcat(cmd, buf));%c	strcpy(cmd, %c./%c);system(strcat(cmd, buf));%c	return (0);}%c";
	char buf[100] = {0};
	char cmd[106] = {0};
	char e[20];
	int i = 5;
	if (__cplusplus != 0)
		i++;
	if (i < 1)
		return (0);
	strcat(buf, "Sully_");
	sprintf(e, "%d", i - 1);
	strcat(buf, e);
	free(NULL);
	strcat(buf, ".c");
	int fd;dprintf(((fd = open(buf, O_WRONLY | O_CREAT | O_TRUNC)) > 0 ? fd : 1), s, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10, i - 1, 10, 10, 10, 10, 10, 34, 34, 10, 34, 37, 34, 10, 10, 10, 34, 34, 10, 10, 34, 34, 10, 34, 34, 10, 34, 34, 10, 10);
	strcpy(cmd, "clang ");
	strcat(cmd, buf);strcat(cmd, " -o ");buf[strlen(buf)-2]=0;system(strcat(cmd, buf));
	strcpy(cmd, "./");system(strcat(cmd, buf));
	return (0);}
