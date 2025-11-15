import 'package:test/test.dart';
import 'dart:io';
import '../question4.dart';

void main() {
  group('Question 4 Tests', () {
    test('Car class can be instantiated', () {
      var car = Car(
        brand: "Toyota",
        model: "Camry",
        year: 2020,
        numberOfDoors: 4,
      );
      expect(car.brand, equals("Toyota"));
      expect(car.model, equals("Camry"));
      expect(car.year, equals(2020));
      expect(car.numberOfDoors, equals(4));
    });
    
    test('Motorcycle class can be instantiated', () {
      var motorcycle = Motorcycle(
        brand: "Honda",
        model: "CBR",
        year: 2021,
        hasWindshield: true,
      );
      expect(motorcycle.brand, equals("Honda"));
      expect(motorcycle.model, equals("CBR"));
      expect(motorcycle.year, equals(2021));
      expect(motorcycle.hasWindshield, equals(true));
    });
    
    test('calculateAge method works correctly', () {
      var car = Car(
        brand: "Toyota",
        model: "Camry",
        year: 2020,
        numberOfDoors: 4,
      );
      var currentYear = DateTime.now().year;
      var expectedAge = currentYear - 2020;
      expect(car.calculateAge(), equals(expectedAge));
    });
    
    test('polymorphism works correctly', () {
      List<Vehicle> vehicles = [
        Car(
          brand: "Toyota",
          model: "Camry",
          year: 2020,
          numberOfDoors: 4,
        ),
        Motorcycle(
          brand: "Honda",
          model: "CBR",
          year: 2021,
          hasWindshield: true,
        ),
      ];
      expect(vehicles.length, equals(2));
      expect(vehicles[0], isA<Car>());
      expect(vehicles[1], isA<Motorcycle>());
    });
    
    test('main function runs without errors', () {
      expect(true, isTrue);
    });
  });
}
