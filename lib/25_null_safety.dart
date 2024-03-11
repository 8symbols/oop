class Class1 {
  void method1() {}
}

class Class2 {
  // Чтобы отметить тип как nullable (допускающий значение null),
  // после названия типа ставится оператор ? (вопросительный знак).
  // И самое главное, NPE отлавливаются на этапе статического анализа/компиляции,
  // а не в рантайме.
  int? _value;

  void init(int initialValue) {
    _value = initialValue;
  }

  void increment() => _value! + 1;

  void decrement() => _value! - 1;
}

class Class3 {
  late int _value;

  void init(int initialValue) {
    _value = initialValue;
  }

  void increment() => _value + 1;

  void decrement() => _value - 1;
}

class Class4 {
  int? _nullableNumber = 2;

  void method() {
    // if (_nullableNumber != null) {
    //   _nullableNumber += 1;
    // }
  }
}

class Box<T> {
  T? object;

  Box(this.object);

  T unbox() => object as T;
}

void main() {
  Class1 object = Class1();
  Class1? nullableObject = null;

  object.method1();

  if (nullableObject != null) {
    nullableObject.method1();
  }

  nullableObject?.method1();
  nullableObject!.method1();

  // если nullableObject не равно null, оно преобразуется в nullableObject.
  // если nullableObject равно null, оно преобразуется в object и так далее.
  final firstNonNull = nullableObject ?? object ?? Class1();

  int Function()? function;
  function?.call();
}
