abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void start();
  void stop();

  void displayInfo() {
    print("Vehicle Info: $year $brand $model");
  }

  int calculateAge() {
    return DateTime.now().year - year;
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car({
    required String brand,
    required String model,
    required int year,
    required this.numberOfDoors,
  }) : super(brand, model, year);

  @override
  void start() {
    print("Starting the car engine...");
  }

  @override
  void stop() {
    print("Stopping the car engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model ($numberOfDoors doors)");
  }
}

class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle({
    required String brand,
    required String model,
    required int year,
    required this.hasWindshield,
  }) : super(brand, model, year);

  @override
  void start() {
    print("Starting the motorcycle engine...");
  }

  @override
  void stop() {
    print("Stopping the motorcycle engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)");
  }
}

void main() {
  List<Vehicle> vehicles = [
    Car(brand: "Toyota", model: "Camry", year: 2020, numberOfDoors: 4),
    Motorcycle(brand: "Honda", model: "CBR", year: 2021, hasWindshield: true),
  ];

  for (var vehicle in vehicles) {
    vehicle.displayInfo();
    vehicle.start();
    vehicle.stop();
    print("${vehicle.brand} age: ${vehicle.calculateAge()} years\n");
  }
}
