import 'dart:io';

// Interface for library items
abstract class LibraryItem {
  String title;
  String author;
  int pages;
  String type;

  // Method to display information about the item
  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Pages: $pages');
    print('Type: $type');
  }
}

// Class representing a book
class Book implements LibraryItem {
  @override
  String title;
  @override
  String author;
  @override
  int pages;
  @override
  String type = 'Book';

  // Constructor
  Book(this.title, this.author, this.pages);

  // Override the displayInfo method
  @override
  void displayInfo() {
    super.displayInfo(); // Call the method from the superclass
    print('This is a book.');
  }
}

// Class representing a magazine
class Magazine implements LibraryItem {
  @override
  String title;
  @override
  String author = 'N/A';
  @override
  int pages;
  @override
  String type = 'Magazine';

  // Constructor
  Magazine(this.title, this.pages);

  // Override the displayInfo method
  @override
  void displayInfo() {
    super.displayInfo(); // Call the method from the superclass
    print('This is a magazine.');
  }
}

// Method to read data from a file and initialize objects
List<LibraryItem> initializeLibraryItems(String fileName) {
  List<LibraryItem> items = [];

  try {
    File file = File(fileName);
    List<String> lines = file.readAsLinesSync();

    for (String line in lines) {
      List<String> data = line.split(',');
      String itemType = data[0].trim();

      if (itemType == 'Book') {
        items.add(Book(data[1].trim(), data[2].trim(), int.parse(data[3].trim())));
      } else if (itemType == 'Magazine') {
        items.add(Magazine(data[1].trim(), int.parse(data[2].trim())));
      }
    }
  } catch (e) {
    print('Error reading file: $e');
  }

  return items;
}

// Method demonstrating the use of a loop to display information about library items
void displayLibraryItems(List<LibraryItem> items) {
  for (LibraryItem item in items) {
    item.displayInfo();
    print('-----------------------');
  }
}

void main() {
  // Initialize library items from a file
  List<LibraryItem> libraryItems = initializeLibraryItems('library_data.txt');

  // Display information about library items
  displayLibraryItems(libraryItems);
}
