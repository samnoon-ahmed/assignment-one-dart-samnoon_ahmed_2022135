mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    print("Payment processed: \$${amount}");
  }
}

mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Report for $employeeName from $department department.";
  }
}

abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    print("$name (ID: $id, Department: $department)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager({
    required String name,
    required String id,
    required String department,
    required this.teamSize,
  }) : super(name, id, department);

  @override
  String getJobTitle() => "Manager";

  @override
  double getBaseSalary() => 85000.0;

  @override
  void displayInfo() {
    print("$name (ID: $id, Department: $department, Team Size: $teamSize)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer({
    required String name,
    required String id,
    required String department,
    required this.programmingLanguage,
  }) : super(name, id, department);

  @override
  String getJobTitle() => "Developer";

  @override
  double getBaseSalary() => 60000.0;

  @override
  void displayInfo() {
    print("$name (ID: $id, Department: $department, Language: $programmingLanguage)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

void main() {
  Manager manager = Manager(
    name: "John Smith",
    id: "M001",
    department: "IT",
    teamSize: 5,
  );

  Developer developer = Developer(
    name: "Alice Johnson",
    id: "D001",
    department: "IT",
    programmingLanguage: "Dart",
  );

  double managerSalary = manager.calculateSalary(manager.getBaseSalary(), 5000.0);
  double developerSalary = developer.calculateSalary(developer.getBaseSalary(), 3000.0);

  manager.displayInfo();
  manager.processPayment(managerSalary);
  print(manager.generateReport(manager.name, manager.department));
  print("");
  developer.displayInfo();
  developer.processPayment(developerSalary);
}
