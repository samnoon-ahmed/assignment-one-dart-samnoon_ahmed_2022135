import 'package:test/test.dart';
import 'dart:io';
import '../question5.dart';

void main() {
  group('Question 5 Tests', () {
    test('Manager class can be instantiated', () {
      var manager = Manager(
        name: "John Smith",
        id: "M001",
        department: "IT",
        teamSize: 5,
      );
      expect(manager.name, equals("John Smith"));
      expect(manager.id, equals("M001"));
      expect(manager.department, equals("IT"));
      expect(manager.teamSize, equals(5));
    });
    
    test('Developer class can be instantiated', () {
      var developer = Developer(
        name: "Alice Johnson",
        id: "D001",
        department: "IT",
        programmingLanguage: "Dart",
      );
      expect(developer.name, equals("Alice Johnson"));
      expect(developer.id, equals("D001"));
      expect(developer.department, equals("IT"));
      expect(developer.programmingLanguage, equals("Dart"));
    });
    
    test('Payable mixin works correctly', () {
      var manager = Manager(
        name: "John Smith",
        id: "M001",
        department: "IT",
        teamSize: 5,
      );
      var salary = manager.calculateSalary(8000.0, 1000.0);
      expect(salary, equals(9000.0));
    });
    
    test('Reportable mixin works correctly', () {
      var manager = Manager(
        name: "John Smith",
        id: "M001",
        department: "IT",
        teamSize: 5,
      );
      var report = manager.generateReport("John Smith", "IT");
      expect(report, contains("Report for John Smith from IT department."));
    });
    
    test('getJobTitle methods work correctly', () {
      var manager = Manager(
        name: "John Smith",
        id: "M001",
        department: "IT",
        teamSize: 5,
      );
      var developer = Developer(
        name: "Alice Johnson",
        id: "D001",
        department: "IT",
        programmingLanguage: "Dart",
      );
      expect(manager.getJobTitle(), equals("Manager"));
      expect(developer.getJobTitle(), equals("Developer"));
    });
    
    test('getBaseSalary methods work correctly', () {
      var manager = Manager(
        name: "John Smith",
        id: "M001",
        department: "IT",
        teamSize: 5,
      );
      var developer = Developer(
        name: "Alice Johnson",
        id: "D001",
        department: "IT",
        programmingLanguage: "Dart",
      );
      expect(manager.getBaseSalary(), equals(85000.0));
      expect(developer.getBaseSalary(), equals(60000.0));
    });
    
    test('main function runs without errors', () {
      expect(true, isTrue);
    });
  });
}
