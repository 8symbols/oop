class Class1 {
  final int a;

  const Class1(this.a);
}

//не можем создать напрямую объект абстрактного класса, используя его конструктор.
//абстрактные методы могут быть определены только в абстрактных классах.
//кроме того, если базовый класс определяет абстрактный метод,
//то класс-наследник обязательно должен его реализовать,
// то есть определить тело метода.
abstract class Class2 {
  final int a;

  Class2(this.a);

  abstract int b;

  int get c;

  set d(int value);

  void someMethod();

  int anotherMethod() {
    print('hello');
    return 42;
  }
}

class Class3 extends Class2 {
  @override
  int b;

  @override
  int get c => 3;

  @override
  set d(int value) {
    print(value);
  }

  Class3(super.a, this.b);

  @override
  void someMethod() {
    print('someMethod');
  }
}
