import 'dart:async';

class Class1 {}

class Class2 {
  Class2();
}

class Class3 {
  final int a;

  int b;

  int c;

  Class3(this.a, {required this.b}) : c = 3 {
    print('constructor');
  }
}

class Class4 {
  int _a;

  int _b;

  Class4(this._a, {required int b}) : _b = b;
}

class Class5 {
  int _a;

  Class5(this._a);

  int get a => _a;

  set a(int value) => _a = value;

  int doSomething(int b) {
    return 42 + b;
  }
}

class Class6 {
  final int a;

  const Class6(this.a);
}

class Class7 {
  static int a = 2;

  static void printA() => print(a);
}

class Class8 {
  final int a;

  Class8(this.a);

  Class8.someNamedConstructor() : a = 2;

  factory Class8.someNamedFactoryConstructor(int a) {
    // Фабричный конструктор не инициализирует объект, а получает его.
    // Сценарии использования:
    // 1. Выполнить какую-то логику перед/после создания объекта.
    // 2. Не создавать объекты, а возвращать из кеша.
    // 3. Возвращать какой-то подтип в зависимости от условий.
    return Class8(a);
  }
}

class Class9 {
  final StreamSubscription<int> _subscription;

  Class9(Stream<int> stream)
      : _subscription = stream.listen((event) => print(event));

  // Деструктор отсутствует, метод для очистки ресурсов нужно вызывать руками,
  // обычно он назван dispose.
  void dispose() {
    _subscription.cancel();
  }
}

class Class10 {
  int a = 0;
}

class Class11 {
  int value = 2;

  @override
  String toString() => 'Class11: value = $value';
}

class Class12 {
  Class12._();

  static final _instance = Class12._();

  // Технически валидно, но является моральным преступлением.
  factory Class12() => _instance;
}

void main() {
  final c3 = Class3(2, b: 4);
  print(c3.b);

  Class7.printA();
}
