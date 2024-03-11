// 1. Интерфейс - это не отдельная сущность, как в некоторых языках программирования,
// это тот же класс. То есть класс в Dart одновременно выступает в роли интерфейса,
// и другой класс может реализовать данный интерфейс.
// 2. Поддерживается множественная реализация интерфейсов.
// 3. Для реализации используется ключевое слова implements

class Base1 {
  void base1() {
    print('base1');
  }
}

class Base2 {
  void base2() {
    print('base1');
  }
}

class Child1 extends Base1 {}

class Child2 implements Base1 {
  @override
  void base1() {
    print('Child2: base1');
  }
}

// class Child3 extends Base1, Base2 {}

class Child4 extends Base1 implements Base2 {
  @override
  void base2() {
    print('Child4: base2');
  }
}

class Child5 implements Base1, Base2 {
  @override
  void base1() {
    print('Child5: base1');
  }

  @override
  void base2() {
    print('Child5: base2');
  }
}
