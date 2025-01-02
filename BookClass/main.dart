class Book {
  int id;
  String title;
  bool borrowed = false;
  Book(this.id, this.title, this.borrowed);
  void displayInfo() {
    print('Book ID: $id\nTitle: $title\nBorrowed: ${borrowed ? 'Yes' : 'No'}');
  }
}

class User {
  int id;
  String name;
  User(this.id, this.name);
  void displayInfo() {
    print('User ID: $id\nName: $name');
  }
}

class Library {
  List<Book> books = [];
  List<User> users = [];
  void addBook(Book book) {
    books.add(book);
    print("Book Title: ${book.title} added");
  }

  void createUser(User user) {
    users.add(user);
    print("User added: ${user.name}");
  }

  void returnBook(int bookID, User user) {
    Book? book;
    bool found = false;

    for (var searching in books) {
      if (searching.id == bookID) {
        book = searching;
        found = true;
        break;
      }
    }
    if (found == true) {
      if (book != null && book.borrowed == true) {
        book.borrowed = false;
        print("${user.name} has returned: ${book.title}");
      } else if (book == null) {
        print('Book not found.');
      } else {
        print('Book is already returned.');
      }
    } else {
      print('Book not found.');
    }
  }

  void borrowBook(int bookID, User user) {
    Book? book;
    bool found = false;
    for (var searching in books) {
      if (searching.id == bookID) {
        book = searching;
        found = true;
        break;
      }
    }
    if (found == true) {
      if (book != null && book.borrowed == false) {
        book.borrowed = true;
        print("${user.name} has borrowed: ${book.title}");
      } else if (book == null) {
        print('Book not found.');
      } else {
        print('Book is already borrowed.');
      }
    } else {
      print('Book not found.');
    }
  }

  void displayInfo() {
    print('Library Info');
    print('Books in the Library:');
    for (var book in books) {
      book.displayInfo();
    }
    print('Users in the Library:');
    for (var user in users) {
      user.displayInfo();
    }
  }
}

void main() {
  Library library = Library();

  // Book1
  print("\n***************\nTest Case 1 Books: ");
  Book book1 = Book(1, 'Book1 Title', false);
  library.addBook(book1);

  // Book2
  print("\n***************\nTest Case 2 Books: ");
  Book book2 = Book(2, 'Book2 Title', false);
  library.addBook(book2);

  // Book3
  print("\n***************\nTest Case 3 Books: ");
  Book book3 = Book(3, 'Book3 Title', false);
  library.addBook(book3);

  print("\n***************\nUser 1 Cases: ");
  User user1 = User(1, 'Mazen');
  library.users.add(user1);
  print("\n***************\nTest Case 1 Borrow:");
  library.borrowBook(book1.id, user1);
  print("\n***************\nTest Case 1 Return:");
  library.returnBook(book1.id, user1);

  print("\n***************\nUser 2 Cases: ");
  User user2 = User(2, 'Mounir');
  library.users.add(user2);

  print("\n***************\nTest Case 2 Borrow: ");
  library.borrowBook(book1.id, user2);
  print("\n***************\nTest Case 3 Borrow: ");
  library.borrowBook(book2.id, user2);
  print("\n***************\nTest Case 2 Return:");
  library.returnBook(book2.id, user2);
  print("\n***************\nTest Case 3 Return: ");
  library.returnBook(book3.id, user2);

  print("***************\nTest Case Display Info:");
  library.displayInfo();
}
