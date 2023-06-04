#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void expected_control_flow(void) {
  puts("This is the expected control flow.");
  exit(0);
}

void unexpected_control_flow(void) {
  puts("This is unexpected!");
  exit(1);
}

void process_inputs() {
  char input[9];
  gets(input);
}

int _main() {
  process_inputs();
  expected_control_flow();
  return 0;
}
