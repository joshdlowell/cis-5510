#include <stdio.h>
#include <string.h>

void copy_buffer(char *arg) {
  char buf[107];
  strcpy(buf, arg);
}

int _main(int argc, char **argv) {
  if (argc != 2) {
    fprintf(stderr, "Error: need a command-line argument\n");
    return 1;
  }
  copy_buffer(argv[1]);
  return 0;
}
