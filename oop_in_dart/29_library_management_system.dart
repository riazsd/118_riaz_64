class Book {
  final int id;
  final String title;
  final String author;
  bool _isIssued = false;

  Book(this.id, this.title, this.author);

  bool get isIssued => _isIssued;

  bool issue() {
    if (_isIssued) return false;
    _isIssued = true;
    return true;
  }

  void returnBook() => _isIssued = false;

  @override
  String toString() => '$id - $title by $author';
}

class Member {
  final int id;
  final String name;

  Member(this.id, this.name);

  String get memberType => 'General Member';
}

class StudentMember extends Member {
  final String department;

  StudentMember(int id, String name, this.department) : super(id, name);

  @override
  String get memberType => 'Student Member';
}

class Library {
  final String name;
  final List<Book> _books = [];
  final List<Member> _members = [];
  final Map<int, int> _issuedBooks = {};

  Library(this.name);

  void addBook(Book book) => _books.add(book);
  void addMember(Member member) => _members.add(member);

  Book? _findBook(int bookId) {
    for (final book in _books) {
      if (book.id == bookId) return book;
    }
    return null;
  }

  Member? _findMember(int memberId) {
    for (final member in _members) {
      if (member.id == memberId) return member;
    }
    return null;
  }

  void issueBook(int bookId, int memberId) {
    final book = _findBook(bookId);
    final member = _findMember(memberId);
    if (book == null || member == null) {
      print('Book or member not found.');
      return;
    }
    if (_issuedBooks.containsKey(bookId)) {
      print('Book is already issued.');
      return;
    }
    if (book.issue()) {
      _issuedBooks[bookId] = memberId;
      print('Book issued successfully to ${member.name}.');
    }
  }

  void returnBook(int bookId) {
    final book = _findBook(bookId);
    if (book == null || !_issuedBooks.containsKey(bookId)) {
      print('This book is not currently issued.');
      return;
    }
    book.returnBook();
    _issuedBooks.remove(bookId);
    print('Book returned successfully.');
  }

  void displayBooks() {
    print('Books in $name:');
    for (final book in _books) {
      final status = book.isIssued ? 'Issued' : 'Available';
      print('${book.title} - $status');
    }
  }
}

void main() {
  final library = Library('CSE Central Library');
  library.addBook(Book(1, 'Dart Programming', 'John Smith'));
  library.addBook(Book(2, 'Clean Code', 'Robert Martin'));
  library.addMember(StudentMember(101, 'Rahim', 'CSE'));
  library.addMember(Member(102, 'Karim'));

  library.displayBooks();
  library.issueBook(1, 101);
  library.issueBook(1, 102);
  library.returnBook(1);
  library.displayBooks();
}
