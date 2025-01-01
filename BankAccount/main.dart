class BankAccount {
  String _AccountID;
  double _balance;
  BankAccount(this._AccountID, this._balance);
  BankAccount.def(this._AccountID) : _balance = 0;
  void withdraw(double Amount) {
    if (Amount > 0) {
      if (_balance >= Amount) {
        _balance -= Amount;
        print(
            "Withdrawal of $Amount Successfuly\nYour Current Balance is: $_balance");
      } else {
        print("Insufficient balance");
      }
    } else {
      print("Something went wrong");
    }
  }

  void deposit(double Amount) {
    if (Amount > 0) {
      _balance += Amount;
      print(
          "Depositing of: $Amount Successfuly\nYour Current Balance is: $_balance");
    } else {
      print("Something went wrong");
    }
  }

  void displayAccountInfo() {
    print("Account ID: $_AccountID\nCurrent Balance: $_balance");
  }
}

void main() {
  var account1 = BankAccount("29904", 500.0);
  print("Account 1 Test Cases: \n");
  print("\n************************************\nTest Case 1: \n");
  account1.displayAccountInfo();
  print("\n************************************\nTest Case 2: \n");
  account1.deposit(200.0);
  print("\n************************************\nTest Case 3: \n");
  account1.withdraw(100.0);
  print("\n************************************\nTest Case 4: \n");
  account1.withdraw(1000.0);
  print("\n************************************\nTest Case 5: \n");
  account1.deposit(-50.0);

  print("\nUpdated Account Information:");
  account1.displayAccountInfo();

  var account2 = BankAccount.def("12345");
  print("Account 2 Test Cases: \n");
  print("\n************************************\nTest Case 1: \n");
  account2.displayAccountInfo();
  print("\n************************************\nTest Case 2: \n");
  account2.deposit(300.0);
  print("\n************************************\nTest Case 3: \n");
  account2.withdraw(150.0);
}
