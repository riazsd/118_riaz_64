class Customer {
  final String name;
  final int id;

  const Customer(this.name, this.id);

  void displayInfo() {
    print('Customer: $name');
    print('ID: $id');
  }
}

void main() {
  const customer = Customer('Karim', 2001);
  customer.displayInfo();
}
