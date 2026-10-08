enum OrderStatus { pending, shipped, delivered }

void displayStatus(OrderStatus status) {
  switch (status) {
    case OrderStatus.pending:
      print('Order is pending.');
      break;
    case OrderStatus.shipped:
      print('Order has been shipped.');
      break;
    case OrderStatus.delivered:
      print('Order has been delivered.');
      break;
  }
}

void main() {
  displayStatus(OrderStatus.pending);
  displayStatus(OrderStatus.shipped);
  displayStatus(OrderStatus.delivered);
}
