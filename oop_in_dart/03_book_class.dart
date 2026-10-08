class Book {
  final String title;
  final String subtitle;
  final String author;

  Book(this.title, this.subtitle, this.author);

  void displayInfo() {
    print('Title: $title');
    print('Subtitle: $subtitle');
    print('Author: $author');
  }
}

void main() {
  final book = Book(
    'Dart Programming',
    'An Introduction to OOP',
    'John Smith',
  );
  book.displayInfo();
}
