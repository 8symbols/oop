void main() {
  // int - зависит от платформы, обычно 64 бита на нативных
  int x = 1;
  int hex = 0xDEADBEEF;

  // double - 64 бита
  double y = 1.1;
  double exponents = 1.42e5;

  // num - базовый класс всех чисел
  num someNumber = x;
  someNumber = y;
  someNumber += hex;
  print(someNumber);
}
