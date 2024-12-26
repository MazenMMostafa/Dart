void main() {
  List numbers = [15, 23, 44, 5, 6, 34, 7, 8, 12];
  int Output = miniVal(numbers);
  print("The Minimum Value: $Output");
}
//Function detects the minimum value
int miniVal(List number) {
  int minimum = number[0];
  for (int i = 1; i < number.length; i++) {
    if (minimum > number[i]) {
      minimum = number[i];
    }
  }
// returns the minimum value to main function
  return minimum;
}
