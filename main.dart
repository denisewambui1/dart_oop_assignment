// Define the Vehicle class (base class)
class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void start() {
    print('$brand started.');
  }
}

// Define the Drivable interface
abstract class Drivable {
  void drive();
}

// Define the Car class (derived class)
class Car extends Vehicle implements Drivable {
  Car(String brand, int year) : super(brand, year);

  @override
  void drive() {
    print('$brand is driving.');
  }
}

void main() {
  // Create a Car instance
  final car = Car('Toyota', 2022);

  // Initialize car data (for demonstration purposes)
  car.start();

  // Demonstrate method overriding
  car.drive();

  // Initialize car data from a file (for demonstration purposes)
  final carFromFile = Car('Honda', 2021);
  carFromFile.start();
  carFromFile.drive();

  // Demonstrate a loop
  for (var i = 0; i < 3; i++) {
    print('Loop iteration $i');
  }
}


