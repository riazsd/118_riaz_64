class Notification {
  String displayNotification() => 'General notification';
}

class EmailNotification extends Notification {
  final String recipient;

  EmailNotification(this.recipient);

  @override
  String displayNotification() => 'Email sent to $recipient';
}

class SMSNotification extends Notification {
  final String phoneNumber;

  SMSNotification(this.phoneNumber);

  @override
  String displayNotification() => 'SMS sent to $phoneNumber';
}

void main() {
  final notifications = <Notification>[
    EmailNotification('rahim@example.com'),
    SMSNotification('+8801712345678'),
  ];

  for (final notification in notifications) {
    print(notification.displayNotification());
  }
}
