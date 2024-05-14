void main(List<String> arguments) {
  //?loops
  //?while loop
  int i = 0; // initialization
  while (i < 10) {
    //condition
    print(i);

    i += 2; //increament
  }

  //?for loop
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  //?dowhile
  int j = 0;
  do {
    print(j);

    j++;
  } while (j < 10);
}
