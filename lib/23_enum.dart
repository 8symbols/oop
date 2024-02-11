// Обычный enum
enum Color {
  red,
  green,
  blue,
}

// Расширенный enum
enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}

void main() {
  final color = Color.green;
  print(color.index);
  print(color.name);
  print(Color.values);

  switch (color) {
    case Color.red:
      print('red');
    case Color.green:
      print('green');
    case Color.blue:
      print('blue');
  }

  print(Vehicle.car.carbonFootprint);
}
