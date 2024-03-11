// Обычный enum - вид класса, используемый для представления
// фиксированного числа постоянных значений.
enum Color {
  red,
  green,
  blue,
}

// Расширенный enum
// Dart также позволяет объявлениям enum объявлять классы с полями, методами
// и конструкторами const,
// которые ограничены фиксированным числом известных экземпляров констант.
//
// Синтаксис аналогичен обычным классам, но с ограничениями:
//
// 1. Переменные экземпляра должны быть final, включая те, которые добавляются
// с помощью mixin.
// 2. Все конструкторы должны быть помечены const.
// 3. Фабричные конструкторы могут возвращать только один из уже созданных
// экземпляров enum.
// 4. Никакой другой класс не может быть расширен, поскольку Enum расширяется
// автоматически (а множественного наследования нет).
// 5. Не может быть переопределений для индекса, хэш-кода, оператора равенства ==.
// 6. Элемент с именем values не может быть объявлен в перечислении, поскольку
// это противоречило бы автоматически сгенерированному получателю статических
// значений.
// 7. Все экземпляры перечисления должны быть объявлены в начале объявления,
// и должен быть объявлен хотя бы один экземпляр.
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
