#include <stdio.h>
#include <stdlib.h>
int main(int argc, char * argv[]) {
int i = 0;
printf("Begin Test...\n");
if (1 == argc) {
printf("argc == 1\n");
} else {
printf("argc != 1\n");}
for (i = 0; i < argc; i++){
printf("%d\tof\t%d\n", i+1, argc);
}
printf("End Test!\n");
}
