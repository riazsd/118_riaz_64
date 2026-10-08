mixin LoggerMixin {
  void logMessage(String message) => print('[LOG] $message');
}

class User with LoggerMixin {
  final String name;

  User(this.name);

  void createUser() => logMessage('User created: $name');
}

class Product with LoggerMixin {
  final String name;

  Product(this.name);

  void createProduct() => logMessage('Product created: $name');
}

void main() {
  User('Rahim').createUser();
  Product('Laptop').createProduct();
}
