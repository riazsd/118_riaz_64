class Document {
  final String title;

  Document(this.title);
}

mixin Printable on Document {
  void display() {
    print('Document title: $title');
    print('This document is printable.');
  }
}

class Invoice extends Document with Printable {
  Invoice(super.title);
}

class Report extends Document with Printable {
  Report(super.title);
}

void main() {
  Invoice('Monthly Invoice').display();
  Report('Annual Report').display();
}
