class Four {
  int id;
  String flightName;
  List<Passenger> passenger;

  Four({
    required this.flightName,
    required this.id,
    required this.passenger,
  });

  factory Four.fromJson(Map<String, dynamic> jsonFour) {
    var list = jsonFour['passengers'] as List;
    List<Passenger> passengerList =
        list.map((passenger) => Passenger.fromJson(passenger)).toList();
    return Four(
        id: jsonFour['id'],
        flightName: jsonFour['flight_name'],
        passenger: passengerList);
  }
}

class Passenger {
  int id;
  int checkedBags;

  Passenger({
    required this.id,
    required this.checkedBags,
  });

  factory Passenger.fromJson(Map<String, dynamic> jsonFour) {
    return Passenger(
      id: jsonFour['id'],
      checkedBags: jsonFour['checked_bags'],
    );
  }
}
