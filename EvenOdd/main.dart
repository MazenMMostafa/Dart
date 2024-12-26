void main() {
//list of numbers
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  for (int i = 0; i < 20; i++) {
    // reminder to check the number is even or odd
    int reminder = numbers[i] % 2;
    switch (reminder) {
      case 0:
        print("${numbers[i]} is Even");
        break;
      case 1:
        print("${numbers[i]} is Odd");
        break;
    }
  }
}
