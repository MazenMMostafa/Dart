void main() {
  const double tax = 0.1;
  double cost = 0;
  final double finalCost;
  Map groceryItems = {
    "Milk": 40,
    "beef": 390,
    "Apple": 15,
    "Tomato": 17,
    "Orange": 20,
  };
  for (int i in groceryItems.values) {
    cost += i;
  }
  finalCost = cost + cost * tax;
  print("Cost: $cost EGP \nTotal Cost: $finalCost EGP");
}
