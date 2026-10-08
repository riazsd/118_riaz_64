class Guest {
  final String name;
  final String phone;

  Guest(this.name, this.phone);
}

class Room {
  final int roomNumber;
  final String type;
  final double pricePerNight;
  bool _isAvailable = true;

  Room(this.roomNumber, this.type, this.pricePerNight);

  bool get isAvailable => _isAvailable;

  bool book() {
    if (!_isAvailable) return false;
    _isAvailable = false;
    return true;
  }

  void release() => _isAvailable = true;

  @override
  String toString() => 'Room $roomNumber ($type)';
}

class Reservation {
  final Guest guest;
  final Room room;
  final int nights;
  bool _active = true;

  Reservation(this.guest, this.room, this.nights);

  double get totalCost => room.pricePerNight * nights;
  bool get isActive => _active;

  void cancel() {
    if (!_active) return;
    _active = false;
    room.release();
    print('Reservation cancelled.');
  }

  void display() {
    print('Guest: ${guest.name}');
    print('Phone: ${guest.phone}');
    print('Room: ${room.roomNumber}');
    print('Type: ${room.type}');
    print('Nights: $nights');
    print('Total cost: ${totalCost.toStringAsFixed(2)}');
    final status = _active ? 'Active' : 'Cancelled';
    print('Status: $status');
  }
}

class Hotel {
  final List<Room> rooms;
  final List<Reservation> reservations = [];

  Hotel(this.rooms);

  Reservation? makeReservation(Guest guest, int roomNumber, int nights) {
    if (nights <= 0) {
      print('Number of nights must be positive.');
      return null;
    }

    for (final room in rooms) {
      if (room.roomNumber == roomNumber) {
        if (!room.book()) {
          print('Room is already booked.');
          return null;
        }
        final reservation = Reservation(guest, room, nights);
        reservations.add(reservation);
        return reservation;
      }
    }

    print('Room not found.');
    return null;
  }
}

void main() {
  final hotel = Hotel([
    Room(101, 'Single', 2000),
    Room(102, 'Double', 3500),
    Room(103, 'Deluxe', 5000),
  ]);
  final guest = Guest('Rahim', '01712345678');
  final reservation = hotel.makeReservation(guest, 102, 3);

  if (reservation != null) {
    reservation.display();
    print('--------------------');
    reservation.cancel();
    print('Room available: ${reservation.room.isAvailable}');
  }
}
