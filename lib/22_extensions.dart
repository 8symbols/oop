// Методы расширения добавляют функциональность существующим библиотекам.
// Вы можете использовать методы расширения, даже не подозревая об этом.
// Например, когда вы используете завершение кода в IDE,
// он предлагает методы расширения наряду с обычными методами.

extension NumberParsing on String {
  static void _someStaticMethod() {}

  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}

// Без имени - видно только в library
extension on String {
  bool get isBlank => trim().isEmpty;
}

extension MyFancyList<T> on List<T> {
  int get doubleLength => length * 2;

  List<T> operator -() => reversed.toList();
}

class Base {
  void virtualMethod() {
    print('virtual base');
  }
}

class Child extends Base {
  @override
  void virtualMethod() {
    print('virtual child');
  }
}

extension on Base {
  void extensionMethod() {
    print('extension base');
  }
}

extension on Child {
  void extensionMethod() {
    print('extension child');
  }
}

void main() {
  print('2'.parseInt());
  print(NumberParsing('42').parseDouble());
  print('  '.isBlank);

  final list = [1, 2, 3];
  print(-list);

  final Base base = Child();
  base.virtualMethod();
  base.extensionMethod();
}
