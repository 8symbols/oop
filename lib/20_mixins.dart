// способ определения кода, который может быть повторно использован
// в нескольких иерархиях классов.
// Для применения миксинов применяется оператор with.
//по сути наследование со всеми вытекающими проблемами

mixin Mixin1 {
  void mixin1() {
    print('mixin1');
  }
}

mixin Mixin2 {
  void mixin2() {
    print('mixin2');
  }
}

class Base {
  void base() {
    print('base');
  }
}

class Child1 extends Base with Mixin1, Mixin2 {}

// ключевое слово "on" добавляет ограничение,
// к какому классу может быть применен миксин
mixin Mixin3 on Base {
  void mixin3() {
    // можно вызывать методы Base
    base();
    print('mixin3');
  }
}

mixin class Mixin4 {
  void mixin4() {
    print('mixin4');
  }
}

abstract mixin class Mixin5 {
  void base();

  void mixin5() {
    base();
    print('mixin5');
  }
}

class Child2 extends Base with Mixin5 {
  //почему не пришлось реализовывать метод base()?
}

void main() {
  Child1().mixin1();
}
