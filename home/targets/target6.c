// Compiled with DEP enabled.
// It's OK if your program crashes after the user exits the shell.

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void cis551_greeting(void) {
  system("echo CIS551 is awesome!");
}

void copy_buffer(char *arg) {
  char buf[13];
  strcpy(buf, arg);
}

int _main(int argc, char *argv[]) {
  if (argc != 2) {
    fprintf(stderr, "Error: Need a command-line argument\n");
    return 1;
  }
  setuid(0);
  cis551_greeting();
  copy_buffer(argv[1]);
  return 0;
}
