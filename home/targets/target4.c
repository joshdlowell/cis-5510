#include <stdio.h>
#include <string.h>

void copy_buffer(char *arg) {
  int *p;
  int a;
  char buf[2051];

  strncpy(buf, arg, sizeof(buf) + 8);

  *p = a;
}

int _main(int argc, char **argv) {
  if (argc != 2) {
    fprintf(stderr, "Error: need a command-line argument\n");
    return 1;
  }
  setuid(0);
  copy_buffer(argv[1]);
  return 0;
}
