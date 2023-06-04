#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int _main(int argc, char *argv[]) {
  char class[7];
  char pennkey[10];

  strcpy(class, "nil");

  gets(pennkey);

  printf("Hey %s! You are enrolled in %s.\n", pennkey, class);
  
  exit(0);  
}
