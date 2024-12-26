void main() {
  const double tax = 0.1;
  double cost = 0;
  final double totalCost;
  List<Map<String, dynamic>> groceryItems = [
    {"name": "Milk", "price": 40},
    {"name": "beef", "price": 390},
    {"name": "Apple", "price": 15},
    {"name": "Tomato", "price": 17},
    {"name": "Orange", "price": 20}
  ];
  for (var i = 0; i < 5; i++) {
    cost += groceryItems[i]['price'];
  }
  totalCost = cost + cost * tax;

  print("Cost: $cost EGP \nTotal Cost: $totalCost EGP");
}
